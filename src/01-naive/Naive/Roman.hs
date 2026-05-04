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

-- | The six legal subtractive pairs of standard Roman notation.
-- Any other smaller-before-larger arrangement (e.g. @IL@, @IC@,
-- @VX@) is malformed and rejected.
subtractivePairs :: [(Char, Char)]
subtractivePairs =
  [ ('I', 'V'), ('I', 'X')
  , ('X', 'L'), ('X', 'C')
  , ('C', 'D'), ('C', 'M')
  ]

-- | Parse a Roman numeral string to a 'Peano' value.
-- Implements the standard subtractive convention: a smaller glyph
-- preceding a larger one is subtracted, but only the six canonical
-- pairs (IV, IX, XL, XC, CD, CM) are accepted. Strings such as
-- @\"IL\"@, @\"IC\"@, @\"VX\"@, or @\"IIV\"@ are rejected as
-- malformed. The empty string returns 'Nothing'.
parseRoman :: String -> Maybe Peano
parseRoman ""  = Nothing
parseRoman cs  = case mapM romanValue cs of
  Nothing -> Nothing
  Just vs -> fmap fromInt (sumWithSubtractive cs vs)

-- | Sum a list of glyph values, subtracting any value that is
-- strictly less than the value immediately following it -- but only
-- when the corresponding glyph pair is one of the six canonical
-- subtractive pairs, the smaller glyph is not preceded by an equal
-- glyph (so @\"IIV\"@ is rejected), and the larger glyph of the
-- subtractive pair is not itself a subtractive prefix to a still
-- larger glyph (so chained subtractives like @\"IXC\"@ are
-- rejected). Returns 'Nothing' for any other smaller-before-larger
-- arrangement.
sumWithSubtractive :: String -> [Int] -> Maybe Int
sumWithSubtractive cs vs =
  let next      = drop 1 vs ++ [0]
      prev      = ' ' : cs
      gNextNext = drop 2 cs ++ [' ', ' ']
      glyphs    = zip4 prev cs (drop 1 cs ++ [' ']) gNextNext
      validSub gPrev g gNext gNextNxt =
        (g, gNext) `elem` subtractivePairs
        && gPrev /= g
        && (gNext, gNextNxt) `notElem` subtractivePairs
      signed (gPrev, g, gNext, gNextNxt) x v
        | x < v && validSub gPrev g gNext gNextNxt = Just (-x)
        | x < v     = Nothing
        | otherwise = Just x
  in fmap sum (sequence (zipWith3 signed glyphs vs next))

-- | A four-way zip used by 'sumWithSubtractive'. Defined here to
-- avoid a dependency on @Data.List.zip4@ from @containers@.
zip4 :: [a] -> [b] -> [c] -> [d] -> [(a, b, c, d)]
zip4 (a:as) (b:bs) (c:cs) (d:ds) = (a, b, c, d) : zip4 as bs cs ds
zip4 _ _ _ _                     = []
