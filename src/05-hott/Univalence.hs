{-# LANGUAGE GADTs #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}

-- | A toy "univalence" axiom at the Haskell level. We cannot, of course,
-- internalize univalence in Haskell -- the universe is not a first-class
-- type, and the GADT 'Path' equates type-level values, not types. What we
-- model here is the slogan
--
-- > equivalent things are equal
--
-- by exhibiting, for every datatype @A@ and chosen equivalence with @B@,
-- functions that simulate transport across the equivalence. This is
-- pedagogical only; the Cubical Agda companion contains the genuine
-- statement.
module Univalence
  ( ua
  , idtoeqv
  , transportEq
  ) where

import Path (Path (..), Equiv (..))

-- | Pseudo-univalence: convert an equivalence to a "path" (here, just the
-- equivalence itself, packaged differently). In real HoTT the codomain
-- is @A == B@ in the universe.
ua :: Equiv a b -> Equiv a b
ua = id

-- | The other direction.
idtoeqv :: Equiv a b -> Equiv a b
idtoeqv = id

-- | Use an equivalence to transport a value. This is the practical
-- consequence of univalence we can demonstrate in Haskell.
transportEq :: Equiv a b -> a -> b
transportEq (Equiv f _) = f

-- | Demonstrate that 'Path a a' is the trivial equivalence; pattern
-- matching on @Refl@ gives back identity.
_pathToEquiv :: Path a a -> a -> a
_pathToEquiv Refl = id
