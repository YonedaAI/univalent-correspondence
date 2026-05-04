-- |
-- Module      : Naive.Roman
-- Description : Roman numeral parser handling subtractive notation.
module Naive.Roman (parseRoman) where

import Naive.Peano (Peano, fromInt)

-- | Lookup the integer value of a single Roman glyph.
romanValue :: Char -> Maybe Int
romanValue c = lookup c
  [ ('I', 1)
  , ('V', 5)
  , ('X', 10)
  , ('L', 50)
  , ('C', 100)
  , ('D', 500)
  , ('M', 1000)
  ]

-- | Parse a Roman numeral string to a 'Peano' value.
-- Implements the standard subtractive convention: a smaller glyph
-- preceding a larger one is subtracted (e.g. IV = 4, IX = 9).
-- The empty string returns 'Nothing'.
parseRoman :: String -> Maybe Peano
parseRoman ""  = Nothing
parseRoman cs  = case mapM romanValue cs of
  Nothing -> Nothing
  Just vs -> Just (fromInt (sumWithSubtractive vs))

-- | Sum a list of glyph values, subtracting any value that is
-- strictly less than the value immediately following it.
sumWithSubtractive :: [Int] -> Int
sumWithSubtractive xs = sum (zipWith signed xs (drop 1 xs ++ [0]))
  where
    signed x next
      | x < next  = -x
      | otherwise =  x
