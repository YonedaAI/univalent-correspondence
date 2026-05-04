-- |
-- Module      : Main
-- Description : Demonstrate the syntax/semantics distinction by
--               reducing four numeral inscriptions to a shared
--               Peano normal form.
--
-- Run with: runghc -i. Main.hs   (from src/01-naive/)
--
-- The output should show that the decimal "58", the Roman
-- "LVIII", a 58-stroke tally, and the sexagesimal (58, 0) all
-- reduce to the same Peano value, witnessing the central thesis
-- of the paper: numerals are syntax, numbers are semantics.
module Main where

import Naive.Peano (Peano, toInt)
import Naive.Decimal (parseDecimal)
import Naive.Roman (parseRoman)
import Naive.Tally (parseTally)
import Naive.Babylonian (parseBabylonian)

-- | The shared sample. We choose 58 to align with the running
-- example in the paper (and the columns table).
sample :: Int
sample = 58

main :: IO ()
main = do
  putStrLn "Naive level demonstration: four numerals, one number."
  putStrLn "----------------------------------------------------"
  let dec   = parseDecimal "58"
      rom   = parseRoman "LVIII"
      tally = parseTally (replicate sample '|')
      bab   = parseBabylonian [(58, 0)]
  putStrLn $ "decimal    \"58\":     " ++ summarize dec
  putStrLn $ "roman      \"LVIII\":  " ++ summarize rom
  putStrLn $ "tally      (58 |s):  " ++ summarize tally
  putStrLn $ "babylonian (58, 0):  " ++ summarize bab
  let allAgree =
        and [ dec == rom
            , rom == tally
            , tally == bab
            ]
  putStrLn ""
  putStrLn $ "all four parsers agree?  " ++ show allAgree

-- | Pretty print a parser result by reducing the Peano value to an
-- 'Int' and showing it. The full Peano constructor chain would be
-- impractical to print at length 58.
summarize :: Maybe Peano -> String
summarize Nothing  = "<parse error>"
summarize (Just p) = "Peano value with toInt = " ++ show (toInt p)
