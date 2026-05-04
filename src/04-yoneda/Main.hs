-- |
-- Module      : Main
-- Description : Demonstrations of the Yoneda embedding for finite categories.
--
-- This program corresponds to Section "Haskell Implementation" of the paper
--   "The Yoneda Perspective: Numbers as Representable Functors".
--
-- It executes:
--
--   1. Construction of the order category (N_<=5, <=).
--   2. Display of h_n (m) for 0 <= n, m <= 5, exhibiting the singleton-or-empty
--      pattern that makes "n is Hom(-, n)" precise.
--   3. A round-trip check of the Yoneda bijection on a chosen natural
--      transformation.
--   4. Construction of B (Z/3Z), display of its regular representation.

module Main where

import FiniteCat
  ( Mor (..)
  , FiniteCat (..)
  , orderCat
  , groupCat
  )
import Yoneda
  ( representable
  , Presheaf (..)
  , yonedaWitness
  , isoOfRepresentables
  )
import Proofs (runAllProofs)

-- ----------------------------------------------------------------------
-- Demonstration 1: numbers as representable functors on (N_<=5, <=)
-- ----------------------------------------------------------------------

demoOrder :: IO ()
demoOrder = do
  putStrLn "=== Demonstration 1: numbers as representable functors ==="
  putStrLn "Category: (N_<=5, <=)"
  putStrLn ""
  let cat = orderCat 5
  putStrLn "Profile of h_n(m) = |Hom(m, n)|:"
  putStrLn "       m=0  m=1  m=2  m=3  m=4  m=5"
  mapM_ (\n -> do
    let row = [length (hom cat m n) | m <- objects cat]
    putStrLn $ "n=" ++ show n ++ ":  " ++ unwords (map (pad . show) row)
    ) (objects cat)
  putStrLn ""
  putStrLn "Reading: a 1 means 'm <= n', a 0 means 'no morphism'."
  putStrLn "By Yoneda, this profile uniquely determines the object n."
  putStrLn ""
  where
    pad s = s ++ replicate (max 0 (4 - length s)) ' '

-- ----------------------------------------------------------------------
-- Demonstration 2: identity criterion h_x ~= h_y iff x ~= y
-- ----------------------------------------------------------------------

demoIdentityCriterion :: IO ()
demoIdentityCriterion = do
  putStrLn "=== Demonstration 2: identity criterion ==="
  let cat = orderCat 5
  putStrLn "For the order category (N_<=5, <=):"
  mapM_ (\(x, y) -> do
    let r = isoOfRepresentables cat x y
    putStrLn $ "  h_" ++ show x ++ " ~= h_" ++ show y ++ "  ?  " ++ show r
    ) [(3, 3), (3, 4), (2, 5), (5, 5)]
  putStrLn "Conclusion: only h_n ~= h_n, i.e. distinct numbers are distinct."
  putStrLn ""

-- ----------------------------------------------------------------------
-- Demonstration 3: Yoneda lemma round-trip
-- ----------------------------------------------------------------------

demoYonedaWitness :: IO ()
demoYonedaWitness = do
  putStrLn "=== Demonstration 3: Yoneda lemma round-trip ==="
  let cat   = orderCat 3
      x     = 2
      h_x   = representable cat x
      -- alpha : h_x -> h_x is the identity natural transformation;
      -- its image of id_x is id_x itself, so the round-trip should be the identity.
      alpha = \_z f -> f
  let trips =
        [ (z, f)
        | z <- objects cat
        , f <- hom cat z x
        ]
  let results =
        [ yonedaWitness cat h_x alpha x z f
        | (z, f) <- trips
        ]
  putStrLn $ "  Tested " ++ show (length trips) ++ " (z, f) pairs."
  putStrLn $ "  All round-trips identity?  " ++ show (and results)
  putStrLn ""

-- ----------------------------------------------------------------------
-- Demonstration 4: Cayley via Yoneda for B (Z/3Z)
-- ----------------------------------------------------------------------

data Z3 = Z0 | Z1 | Z2 deriving (Eq, Show)

z3mul :: Z3 -> Z3 -> Z3
z3mul a b = toZ3 ((fromZ3 a + fromZ3 b) `mod` 3)
  where
    fromZ3 :: Z3 -> Int
    fromZ3 Z0 = 0
    fromZ3 Z1 = 1
    fromZ3 Z2 = 2
    toZ3 :: Int -> Z3
    toZ3 0 = Z0
    toZ3 1 = Z1
    toZ3 _ = Z2

demoCayley :: IO ()
demoCayley = do
  putStrLn "=== Demonstration 4: Cayley via Yoneda ==="
  let cat = groupCat [Z0, Z1, Z2] Z0 z3mul
  putStrLn "Category B(Z/3Z): one object, three morphisms."
  let homSet = hom cat () ()
  putStrLn $ "  Hom(*, *) = " ++ show (map morName homSet)
  putStrLn "Regular representation = h_(*) acting on itself:"
  let pres = representable cat ()
  mapM_ (\m -> do
    let images = [onMor pres m elt | elt <- onObj pres ()]
    putStrLn $ "  acting by " ++ morName m ++ ": " ++ show (map (fmap morName) images)
    ) homSet
  putStrLn ""

-- ----------------------------------------------------------------------
-- Main entry point
-- ----------------------------------------------------------------------

main :: IO ()
main = do
  putStrLn "The Yoneda Perspective: Haskell demonstration"
  putStrLn "============================================="
  putStrLn ""
  demoOrder
  demoIdentityCriterion
  demoYonedaWitness
  demoCayley
  runAllProofs
  putStrLn ""
  putStrLn "All demonstrations complete."
