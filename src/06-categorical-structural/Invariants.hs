-- | Invariants: a panel of definable invariants of T_succ-models.
--
-- A "definable invariant" is a function I : Mod(T) -> Set (or Mod(T) -> N)
-- whose value depends only on the isomorphism class of its argument.
-- Equivalently, I extends to a functor on the underlying groupoid of Mod(T).
--
-- Each invariant in this module is built using only the primitive
-- operations of a T_succ-model: equality, the constant zero, and the
-- successor function.  By Theorem 4.5 of the paper, every such invariant
-- agrees on isomorphic models.
module Invariants
  ( cardinality
  , orbitLen
  , succImageAt
  , isFixedPoint
  , numFixedPoints
  ) where

import Model (Model(..), applyN)

-- | Cardinality of the carrier.
cardinality :: Model a -> Int
cardinality = length . carrier

-- | Orbit length of the zero element under succ.
--   Returns the smallest n >= 1 such that succ^n(zero) == zero, capped
--   at the cardinality of the model if no such n is found within that
--   range.  For a closed finite T_succ-model in which the orbit of zero
--   is the whole carrier, this is exactly the cardinality.
orbitLen :: Eq a => Model a -> Int
orbitLen m = go 1 (succM m (zero m))
  where
    n0 = zero m
    cap = length (carrier m)
    go k cur
      | cur == n0 = k
      | k >= cap  = cap
      | otherwise = go (k + 1) (succM m cur)

-- | The k-th iterate of succ applied to zero, returned as an Int index
--   (its position in the orbit).
succImageAt :: Eq a => Int -> Model a -> Int
succImageAt k m =
  let target = applyN k (succM m) (zero m)
      indexed = zip [0..] (iterate (succM m) (zero m))
  in case [i | (i, x) <- take (length (carrier m) + 1) indexed, x == target] of
       (i:_) -> i
       []    -> -1

-- | Does succ have a fixed point at this carrier element?
isFixedPoint :: Eq a => Model a -> a -> Bool
isFixedPoint m x = succM m x == x

-- | Total number of succ-fixed points in the model.
numFixedPoints :: Eq a => Model a -> Int
numFixedPoints m = length (filter (isFixedPoint m) (carrier m))
