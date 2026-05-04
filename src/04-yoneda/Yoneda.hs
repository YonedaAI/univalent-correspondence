{-# LANGUAGE ScopedTypeVariables #-}

-- |
-- Module      : Yoneda
-- Description : The Yoneda embedding for finite categories.
--
-- For a finite category @C@ and object @x@, the representable presheaf
-- @h_x : C^op -> Set@ is defined on objects @z@ by @h_x(z) = Hom_C(z, x)@,
-- and on morphisms @g : w -> z@ by @h_x(g) = (- . g) : Hom(z, x) -> Hom(w, x)@.
--
-- This module exposes:
--
--   * 'Presheaf' as a record of object-action and morphism-action,
--   * 'representable' constructing @h_x@ from a category @C@ and object @x@,
--   * 'yonedaWitness' realizing the bijection
--       @Nat(h_x, F) ~= F(x)@,
--   * 'isoOfRepresentables' deciding @h_x ~= h_y@ as presheaves on a finite cat.

module Yoneda
  ( Presheaf (..)
  , representable
  , NaturalTransformation
  , yonedaForward
  , yonedaInverse
  , yonedaWitness
  , isoOfRepresentables
  ) where

import FiniteCat
  ( Mor (..)
  , FiniteCat (..)
  )

-- $note
-- All equality checks on morphisms compare the full 'Mor' record (name,
-- source, target). We never compare by 'morName' alone, since two different
-- morphisms can in principle share a label.

-- | A presheaf @C^op -> Set@ is given by:
--   * an action on objects, returning a list of "elements" (here morphisms
--     for representables, but in general just labelled tags), and
--   * an action on morphisms @g : w -> z@ in @C@, sending an element at @z@
--     to one at @w@.
data Presheaf o = Presheaf
  { onObj :: o -> [Mor o]
  , onMor :: Mor o -> Mor o -> Maybe (Mor o)
  }

-- | Construct the representable presheaf @h_x = Hom(-, x)@ for object @x@
-- in finite category @cat@.
representable :: forall o. Eq o => FiniteCat o -> o -> Presheaf o
representable cat x = Presheaf
  { onObj = \z -> hom cat z x
  , onMor = \g element ->
      -- element : z -> x, g : w -> z, want element . g : w -> x
      compose cat element g
  }

-- | A natural transformation between presheaves @h_x -> F@ is a per-object
-- function on hom-set elements: at each object @z@, a map
--
--   @alpha_z : Hom(z, x) -> F(z)@.
--
-- We model the codomain elements as 'Mor' tags carried by the target presheaf,
-- so a component is a function @Mor o -> Mor o@ (Set-valued, not relational).
type NaturalTransformation o =
  o -> Mor o -> Mor o

-- | Forward direction of the Yoneda bijection.
--
-- @yonedaForward cat alpha x = alpha_x (id_x)@.
yonedaForward
  :: Eq o
  => FiniteCat o
  -> NaturalTransformation o
  -> o
  -> Mor o
yonedaForward cat alpha x = alpha x (identity cat x)

-- | Inverse direction of the Yoneda bijection.
--
-- Given a "universal element" @u : F(x)@ (here a list of morphisms),
-- produce the unique natural transformation @h_x -> F@. The component at
-- @z@ on input @f : z -> x@ is @F(f) (u)@.
-- | The inverse direction returns @Maybe@ to make the partiality explicit:
--   'Nothing' means @F(f)(u)@ is undefined (which cannot happen if @F@ is a
--   genuine presheaf and @u in F(x)@; if it does occur, the inputs are
--   ill-formed and the round-trip should fail rather than silently succeed).
yonedaInverse
  :: forall o. Eq o
  => FiniteCat o
  -> Presheaf o
  -> Mor o        -- ^ the chosen "universal element" u in F(x)
  -> o            -- ^ the representing object x
  -> o            -- ^ source object z
  -> Mor o        -- ^ element f : z -> x of h_x(z)
  -> Maybe (Mor o)
yonedaInverse _cat target u _x _z f = onMor target f u

-- | The Yoneda lemma is the assertion that for any natural transformation
-- @alpha : h_x -> F@,
--
--   @yonedaInverse cat F (yonedaForward cat alpha x) x z f == alpha z f@.
--
-- This function checks that round-trip on a particular @(z, f)@ pair.
yonedaWitness
  :: forall o. (Eq o)
  => FiniteCat o
  -> Presheaf o                        -- ^ target presheaf F
  -> NaturalTransformation o           -- ^ alpha : h_x -> F
  -> o                                 -- ^ representing object x
  -> o                                 -- ^ test object z
  -> Mor o                             -- ^ test element f : z -> x
  -> Bool
yonedaWitness cat target alpha x z f =
  let u             = yonedaForward cat alpha x
      reconstructed = yonedaInverse cat target u x z f
      direct        = alpha z f
  in case reconstructed of
       Just m  -> m == direct           -- structural Mor equality
       Nothing -> False                  -- partiality counts as failure

-- | Check whether two representable presheaves @h_x@ and @h_y@ are isomorphic
-- as presheaves on the finite category @cat@. By the Yoneda lemma
-- (Corollary, "identity criterion"), this holds iff @x ~= y@ in @cat@.
--
-- For a finite category we can decide isomorphism by hom-set cardinality
-- profile: @h_x ~= h_y@ iff for every object @z@, @|Hom(z, x)| == |Hom(z, y)|@,
-- and there exist mutually inverse morphisms @x -> y@, @y -> x@.
isoOfRepresentables :: Eq o => FiniteCat o -> o -> o -> Bool
isoOfRepresentables cat x y =
  let sameProfile =
        all (\z -> length (hom cat z x) == length (hom cat z y))
            (objects cat)
      witnesses =
        [ (f, g)
        | f <- hom cat x y
        , g <- hom cat y x
        , Just fg <- [compose cat g f]   -- fg : x -> x
        , Just gf <- [compose cat f g]   -- gf : y -> y
        , fg == identity cat x           -- structural equality on Mor
        , gf == identity cat y
        ]
   in sameProfile && not (null witnesses)
