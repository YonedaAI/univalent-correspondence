-- |
-- Module      : Naive.Decimal
-- Description : Hindu-Arabic decimal numeral parser.
module Naive.Decimal (parseDecimal) where

import Data.Char (digitToInt, isDigit)
import Naive.Peano (Peano, fromInt)

-- | Parse a non-empty string of decimal digits to a 'Peano' value.
-- Returns 'Nothing' if any character is not a decimal digit, or
-- if the string is empty. Leading zeros are accepted (the function
-- is purely about denotation, not well-formedness of the inscription).
parseDecimal :: String -> Maybe Peano
parseDecimal "" = Nothing
parseDecimal s
  | all isDigit s = Just (fromInt (foldl step 0 s))
  | otherwise     = Nothing
  where
    step acc c = acc * 10 + digitToInt c
