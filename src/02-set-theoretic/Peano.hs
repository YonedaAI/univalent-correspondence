-- |
-- Module      : Peano
-- Description : The Peano interface, abstracted as a typeclass.
-- Copyright   : (c) YonedaAI Research, 2026
--
-- The structural specification of a Peano structure: a type with a base point
-- (zero), a successor, and the ability to test for zero and (partially) take
-- predecessors. Both the von Neumann and Zermelo encodings will instantiate
-- this typeclass; the fact that they both can is precisely the structural
-- equivalence Benacerraf identified.

module Peano
  ( Peano(..)
  , add
  , mul
  , less
  , fromInt
  , toInt
  , peanoIsomorphism
  ) where

-- | A type @a@ models a Peano structure when it has a base point (zero), a
--   successor function, an isZero predicate, and a partial predecessor.
class Peano a where
  zeroP   :: a
  sucP    :: a -> a
  isZeroP :: a -> Bool
  predP   :: a -> Maybe a   -- partial: predP zeroP = Nothing

-- | Addition by recursion on the right argument.
add :: Peano a => a -> a -> a
add m n
  | isZeroP n = m
  | otherwise = case predP n of
      Just k  -> sucP (add m k)
      Nothing -> m  -- unreachable if predP and isZeroP are coherent

-- | Multiplication by recursion on the right argument.
mul :: Peano a => a -> a -> a
mul m n
  | isZeroP n = zeroP
  | otherwise = case predP n of
      Just k  -> add (mul m k) m
      Nothing -> zeroP

-- | Strict less-than, defined structurally via repeated predecessor.
less :: (Peano a, Eq a) => a -> a -> Bool
less m n
  | isZeroP n = False
  | m == n    = False
  | otherwise = case predP n of
      Just k  -> m == k || less m k
      Nothing -> False

-- | Convert a non-negative Int to any Peano representation by iterating sucP.
fromInt :: Peano a => Int -> a
fromInt n
  | n <= 0    = zeroP
  | otherwise = sucP (fromInt (n - 1))

-- | Convert a Peano representation to a non-negative Int by iterating predP.
toInt :: Peano a => a -> Int
toInt = go 0
  where
    go acc x
      | isZeroP x = acc
      | otherwise = case predP x of
          Just y  -> go (acc + 1) y
          Nothing -> acc

-- | The canonical isomorphism between any two Peano structures, defined
--   structurally: it sends zero to zero and commutes with succ. By
--   Theorem 6.4 (uniqueness of Peano structures), this is the unique
--   such map.
peanoIsomorphism :: (Peano a, Peano b) => a -> b
peanoIsomorphism x
  | isZeroP x = zeroP
  | otherwise = case predP x of
      Just y  -> sucP (peanoIsomorphism y)
      Nothing -> zeroP
