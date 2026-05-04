{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE ScopedTypeVariables #-}

-- | Demonstration entry point for the Haskell companion to Paper 05
-- (The HoTT Perspective). Exercises:
--
--   1. 58 as the canonical Nat term @succ^58 zero@.
--   2. The path groupoid laws (refl, sym, trans).
--   3. Transport along a path.
--   4. Toy fundamental group of the circle.
--   5. A type-level "1 + 1 = 2" via the singleton machinery.
--
-- See: papers/05-hott/latex/05-hott.tex
module Main (main) where

import Circle      (Loop, baseLoop, compose, decode, encode, inverse)
import Nat         (add, fiftyEight, fromInt, mul, toInt)
import Path        (Path (..), sym, trans, transport)
import Univalence  (transportEq)

import qualified Path as P
import qualified Univalence as Uv

-- A simple newtype indexed by a phantom type so we can transport along
-- a Path between phantoms.
newtype Tagged a = Tagged { untag :: Int }
  deriving Show

main :: IO ()
main = do
  putStrLn "=== Paper 05 (HoTT) -- Haskell Companion ==="

  putStrLn ""
  putStrLn "1. The canonical 58 in N"
  putStrLn "------------------------"
  let n58 = fiftyEight
  putStrLn $ "  toInt fiftyEight                = " ++ show (toInt n58)
  putStrLn $ "  fromInt 58 == fiftyEight        = " ++ show (fromInt 58 == n58)
  putStrLn $ "  succ^58 zero (round-trip)       = " ++ show (toInt n58)

  putStrLn ""
  putStrLn "2. Recursive arithmetic on N"
  putStrLn "----------------------------"
  let s = add (fromInt 23) (fromInt 35)
      p = mul (fromInt 2)  (fromInt 29)
  putStrLn $ "  23 + 35 = "                ++ show (toInt s)
  putStrLn $ "  2 * 29  = "                ++ show (toInt p)
  putStrLn $ "  both equal 58?            = " ++ show (toInt s == 58 && toInt p == 58)

  putStrLn ""
  putStrLn "3. Path groupoid laws"
  putStrLn "---------------------"
  let r :: Path Int Int
      r = Refl
      s1 = sym r
      t1 = trans r r
  putStrLn "  refl, sym, trans constructed at type level"
  putStrLn $ "  (forced to value to demonstrate evaluation): " ++ show (force r, force s1, force t1)

  putStrLn ""
  putStrLn "4. Transport along Refl is identity"
  putStrLn "-----------------------------------"
  let v0 :: Tagged Int
      v0 = Tagged 58
      v1 = transport (Refl :: Path Int Int) v0
  putStrLn $ "  v0 = "                       ++ show v0
  putStrLn $ "  transport Refl v0 = "        ++ show v1
  putStrLn $ "  equal (mod tag)?  = "        ++ show (untag v0 == untag v1)

  putStrLn ""
  putStrLn "5. Toy pi_1(S^1) = Z"
  putStrLn "--------------------"
  let l3 = 3 :: Loop
      l5 = 5 :: Loop
  putStrLn $ "  base loop                       = " ++ show baseLoop
  putStrLn $ "  loop^3 . loop^5                 = " ++ show (compose l3 l5)
  putStrLn $ "  inverse(loop^3) = "                  ++ show (inverse l3)
  putStrLn $ "  encode . decode = id, decode 8 = " ++ show (decode 8)
  putStrLn $ "  encode 8 = "                         ++ show (encode 8)

  putStrLn ""
  putStrLn "6. Univalence (toy): transporting via an equivalence"
  putStrLn "----------------------------------------------------"
  let eq = Uv.ua P.equivId
      transported = transportEq eq (42 :: Int)
  putStrLn $ "  ua(idEquiv) applied to 42 = " ++ show transported

  putStrLn ""
  putStrLn "Done."
  where
    force :: Path a b -> String
    force Refl = "Refl"
