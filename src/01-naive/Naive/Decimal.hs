-- |
-- Module      : Naive.Decimal
-- Description : Hindu-Arabic decimal numeral parser.
module Naive.Decimal (parseDecimal) where

import Data.Char (digitToInt, isDigit)
import Naive.Peano (Peano, fromNatural)

-- | Parse a non-empty string of decimal digits to a 'Peano' value.
-- Returns 'Nothing' if any character is not a decimal digit, or
-- if the string is empty. Leading zeros are accepted (the function
-- is purely about denotation, not well-formedness of the inscription).
--
-- The accumulator is 'Integer' (arbitrary-precision) so that the
-- denotation is correct for inputs of every length; no fixed-width
-- 'Int' is used until the final 'Peano' reduction.
parseDecimal :: String -> Maybe Peano
parseDecimal "" = Nothing
parseDecimal s
  | all isDigit s = Just (fromNatural (foldl step 0 s))
  | otherwise     = Nothing
  where
    step :: Integer -> Char -> Integer
    step acc c = acc * 10 + toInteger (digitToInt c)
