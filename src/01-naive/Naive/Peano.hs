-- |
-- Module      : Naive.Peano
-- Description : Structural normal form for naive numerals.
--
-- The Peano natural numbers serve as the shared semantic codomain
-- of every numeral parser in this package. Each parser
-- (decimal, Roman, tally, sexagesimal) reduces a syntactic
-- inscription into a 'Peano' value, and equality of Peano values
-- witnesses semantic equivalence of inscriptions across systems.
module Naive.Peano
  ( Peano(..)
  , fromInt
  , toInt
  , addP
  , mulP
  ) where

-- | The structural normal form: unary natural numbers.
-- This is the same datatype that, in Paper III, will be recognized
-- as the initial algebra of the endofunctor F(X) = 1 + X.
data Peano = Z | S Peano deriving (Eq, Show)

-- | Convert a non-negative 'Int' to a 'Peano' value.
-- Negative inputs are clamped to zero.
fromInt :: Int -> Peano
fromInt n
  | n <= 0    = Z
  | otherwise = S (fromInt (n - 1))

-- | Convert a 'Peano' value to an 'Int'. Total but not stack-safe
-- for very large inputs; this is fine for the demonstrations here.
toInt :: Peano -> Int
toInt Z     = 0
toInt (S k) = 1 + toInt k

-- | Addition by recursion on the first argument.
addP :: Peano -> Peano -> Peano
addP Z     y = y
addP (S x) y = S (addP x y)

-- | Multiplication by repeated addition.
mulP :: Peano -> Peano -> Peano
mulP Z     _ = Z
mulP (S x) y = addP y (mulP x y)
