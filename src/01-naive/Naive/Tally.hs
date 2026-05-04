-- |
-- Module      : Naive.Tally
-- Description : Tally numeral parser.
--
-- A tally is the simplest numeral system: a finite string of stroke
-- glyphs whose value is the number of stroke marks. We support
-- gate-five tallies: vertical '|' strokes contribute one each, and
-- the diagonal '/' is treated as a *grouping* mark that does not
-- itself count (it serves only to bundle every fifth stroke for
-- legibility). Any other character causes the parse to fail.
--
-- Note: this parser counts only '|' characters; it does not enforce
-- that '/' appears exactly every fifth stroke. The choice keeps the
-- parser simple and aligns with the paper's emphasis on denotation
-- rather than well-formedness of the inscription.
module Naive.Tally (parseTally) where

import Naive.Peano (Peano, fromInt)

-- | Parse a tally inscription. Counts only '|' marks; '/' is
-- accepted as a grouping symbol and does not contribute to the
-- value. Any other character causes the parse to fail.
parseTally :: String -> Maybe Peano
parseTally s
  | all isStrokeOrGroup s = Just (fromInt (length (filter (== '|') s)))
  | otherwise             = Nothing
  where
    isStrokeOrGroup c = c == '|' || c == '/'
