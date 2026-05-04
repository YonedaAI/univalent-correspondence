-- |
-- Module      : Naive.Babylonian
-- Description : Simplified Babylonian sexagesimal denotation function.
--
-- We model a Babylonian numeral by its already-tokenized form: a
-- list of (digit, place) pairs where each digit is in the range
-- 0..59 and each place is a non-negative power of 60. Lower places
-- come first. Historical Babylonian texts handled the absence of
-- zero by context; modern transliterations (and this module) use
-- an explicit zero digit.
--
-- We expose 'fromBabylonian' as the canonical name for this
-- denotation function. The legacy alias 'parseBabylonian' is kept
-- so existing test code continues to compile, but the function is
-- not a parser in the lexical sense (it operates on a pre-tokenized
-- digit-place list, not on a string of cuneiform glyphs). This
-- terminological note matches the discussion in Section 10 of the
-- paper.
module Naive.Babylonian
  ( fromBabylonian
  , parseBabylonian
  ) where

import Naive.Peano (Peano, fromNatural)

-- | Convert a list of (digit, place) pairs to a 'Peano' value.
-- Returns 'Nothing' if any digit is outside 0..59 or any place is
-- negative.
--
-- Place-value contributions are computed in 'Integer' so that
-- numerals with large places (e.g. @60^p@ for @p >= 11@) do not
-- overflow before reduction to the structural normal form.
fromBabylonian :: [(Int, Int)] -> Maybe Peano
fromBabylonian places
  | all valid places = Just (fromNatural (sum [contribution d p | (d, p) <- places]))
  | otherwise        = Nothing
  where
    valid (d, p) = 0 <= d && d < 60 && p >= 0
    contribution :: Int -> Int -> Integer
    contribution d p = toInteger d * (60 :: Integer) ^ p

-- | Legacy alias for 'fromBabylonian'. See module documentation.
parseBabylonian :: [(Int, Int)] -> Maybe Peano
parseBabylonian = fromBabylonian
