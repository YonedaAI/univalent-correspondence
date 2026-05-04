{-# LANGUAGE ScopedTypeVariables #-}

-- |
-- Module      : FiniteCat
-- Description : Finite categories represented by explicit object/morphism lists.
--
-- A finite category is given by:
--   * a list of objects,
--   * for each pair of objects a list of morphisms (the hom-set), and
--   * a composition function and identity assignment.
--
-- This is sufficient to compute the Yoneda embedding for small examples
-- such as the order category (N_<=k, <=) and one-object groupoids B G.

module FiniteCat
  ( Mor (..)
  , FiniteCat (..)
  , identityMor
  , composeMor
  , orderCat
  , groupCat
  ) where

-- | A morphism is identified by a name plus its source and target objects.
data Mor o = Mor
  { morName :: String
  , morSrc  :: o
  , morTgt  :: o
  } deriving (Eq, Ord, Show)

-- | A finite category.
--
-- The 'compose' field receives morphisms in the standard order:
-- @compose g f@ computes @g . f@, defined when @morTgt f == morSrc g@.
data FiniteCat o = FiniteCat
  { objects   :: [o]
  , hom       :: o -> o -> [Mor o]
  , identity  :: o -> Mor o
  , compose   :: Mor o -> Mor o -> Maybe (Mor o)
  }

-- | Identity morphism at an object (convenience).
identityMor :: FiniteCat o -> o -> Mor o
identityMor = identity

-- | Compose two morphisms in a finite category.
composeMor :: FiniteCat o -> Mor o -> Mor o -> Maybe (Mor o)
composeMor = compose

-- | The order category on @{0, 1, ..., n}@ with @<=@.
--
-- There is exactly one morphism @i -> j@ when @i <= j@ and none otherwise.
-- This is the running example for "numbers as representable functors".
orderCat :: Int -> FiniteCat Int
orderCat n = FiniteCat
  { objects  = [0 .. n]
  , hom      = \i j ->
      [ Mor ("le_" ++ show i ++ "_" ++ show j) i j
      | inRange i, inRange j, i <= j
      ]
  , identity = \i ->
      if inRange i
        then Mor ("le_" ++ show i ++ "_" ++ show i) i i
        else error ("orderCat: identity at out-of-range object " ++ show i)
  , compose  = \g f ->
      -- Reject fabricated morphisms not in the hom-sets of orderCat:
      -- every legal morphism @i -> j@ requires @i <= j@ and both endpoints
      -- in @[0..n]@. Composition is then the unique morphism @morSrc f -> morTgt g@.
      if inRange (morSrc f) && inRange (morTgt f)
         && inRange (morSrc g) && inRange (morTgt g)
         && morSrc f <= morTgt f          -- f really lives in hom
         && morSrc g <= morTgt g          -- g really lives in hom
         && morSrc g == morTgt f          -- composability
        then Just (Mor ("le_" ++ show (morSrc f) ++ "_" ++ show (morTgt g))
                       (morSrc f) (morTgt g))
        else Nothing
  }
  where
    inRange :: Int -> Bool
    inRange i = 0 <= i && i <= n

-- | The one-object groupoid B G of a finite group given by its element list
-- and binary operation. Objects: a single object @()@. Morphisms: group elements.
groupCat :: forall g. (Eq g, Show g) => [g] -> g -> (g -> g -> g) -> FiniteCat ()
groupCat elems unit mul = FiniteCat
  { objects  = [()]
  , hom      = \_ _ -> [Mor (show e) () () | e <- elems]
  , identity = \_ -> Mor (show unit) () ()
  , compose  = \g f ->
      case (lookup (morName g) [(show e, e) | e <- elems],
            lookup (morName f) [(show e, e) | e <- elems]) of
        (Just gg, Just ff) ->
          Just (Mor (show (mul gg ff)) () ())
        _ -> Nothing
  }
