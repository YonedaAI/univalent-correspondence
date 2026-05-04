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

import Naive.Peano (Peano, fromInt)

-- | Convert a list of (digit, place) pairs to a 'Peano' value.
-- Returns 'Nothing' if any digit is outside 0..59 or any place is
-- negative.
fromBabylonian :: [(Int, Int)] -> Maybe Peano
fromBabylonian places
  | all valid places = Just (fromInt (sum [d * 60 ^ p | (d, p) <- places]))
  | otherwise        = Nothing
  where
    valid (d, p) = 0 <= d && d < 60 && p >= 0

-- | Legacy alias for 'fromBabylonian'. See module documentation.
parseBabylonian :: [(Int, Int)] -> Maybe Peano
parseBabylonian = fromBabylonian
