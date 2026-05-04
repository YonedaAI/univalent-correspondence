{-# LANGUAGE ScopedTypeVariables #-}

-- |
-- Module      : Main
-- Description : Demonstrations of the universal property of the natural numbers
--               object (NNO), the recursion combinator, and final coalgebras.
-- Series      : Univalent Correspondence, Paper 03 of 6+1
-- Author      : YonedaAI Research
-- Date        : 2026-05-03
--
-- Companion code for the paper "The Universal Property Perspective: Numbers
-- as Initial Successor Structures." Demonstrates that the unique morphism
-- guaranteed by the NNO universal property is the primitive recursion
-- (iteration) combinator, and that "58" computes consistently across
-- different pointed dynamical systems.
module Main (main) where

import           NNO          (Nat (..), nnoRec, peano, fromPeano)
import qualified NNO
import           Recursion    (GenNat, genRec, peanoToGen)
import           Coalgebra    (streamTake, naturals, fibs)
import           Proofs       (runAllProofs)
import           Properties   (runAllProperties)

-- | Demonstrate that "58" is the same structural position in every pointed
-- dynamical system, by computing rec(x0, f)(58) for several systems.
demonstrate58 :: IO ()
demonstrate58 = do
  putStrLn "== Universal property: 58 in different pointed dynamical systems =="
  let n58 = peano 58
  -- (Int, 0, +1): 58 |-> 58
  putStrLn $ "  In (Int, 0, +1):       58 -> " ++ show (nnoRec (0 :: Int) (+1) n58)
  -- (Int, 1, *2): 58 |-> 2^58
  putStrLn $ "  In (Int, 1, *2):       58 -> " ++ show (nnoRec (1 :: Integer) (*2) n58)
  -- (String, "", '*':): 58 |-> 58 stars
  putStrLn $ "  In (String, \"\", '*':): 58 -> " ++ show (nnoRec "" ('*':) n58)
  -- ([Int], [], (length . (0:))): 58 |-> [57,56,...,0]
  putStrLn $ "  In ([Int], [], step):  58 -> length " ++ show (length (nnoRec [] (\xs -> length xs : xs) n58))

-- | Verify the iteration equations hold.
verifyIterationEqs :: IO ()
verifyIterationEqs = do
  putStrLn "== Verifying iteration equations =="
  let f = (+1) :: Int -> Int
      x0 = 0 :: Int
      n = peano 5
  putStrLn $ "  rec(0, +1)(0)     = " ++ show (nnoRec x0 f Z)
  putStrLn $ "  rec(0, +1)(succ 4)= " ++ show (nnoRec x0 f n)
  putStrLn $ "  f(rec(0, +1)(4))  = " ++ show (f (nnoRec x0 f (peano 4)))
  putStrLn $ "  match: " ++ show (nnoRec x0 f n == f (nnoRec x0 f (peano 4)))

-- | Demonstrate that the canonical iso between two NNOs sends position k to position k.
canonicalIso :: IO ()
canonicalIso = do
  putStrLn "== Canonical iso between Peano Nat and generic Mu(NatF) =="
  let n42 :: Nat
      n42 = peano 42
      g42 :: GenNat
      g42 = peanoToGen n42
      back :: Nat
      back = genRec Z S g42
  putStrLn $ "  Peano 42 -> Mu (NatF) -> Peano: " ++ show (fromPeano back)
  putStrLn $ "  identity round-trip: " ++ show (back == n42)

-- | Stream demonstrations: the final coalgebra of A x (-).
streamDemo :: IO ()
streamDemo = do
  putStrLn "== Final coalgebra: streams =="
  let nats = naturals
  putStrLn $ "  first 10 nats:  " ++ show (streamTake 10 nats)
  let fs = fibs
  putStrLn $ "  first 10 fibs:  " ++ show (streamTake 10 fs)

-- | Show that recursion and induction-as-recursion compose.
inductionDemo :: IO ()
inductionDemo = do
  putStrLn "== Induction principle: factorial via primitive recursion =="
  let fact :: Nat -> Integer
      fact = NNO.primRec 1 (\n acc -> (NNO.fromPeanoInteger n + 1) * acc)
  mapM_ (\k -> putStrLn $ "  " ++ show k ++ "! = " ++ show (fact (peano k))) [0,1,2,3,5,8]

main :: IO ()
main = do
  putStrLn "Univalent Correspondence Series, Paper 03"
  putStrLn "Universal Property Perspective: Numbers as Initial Successor Structures"
  putStrLn "------------------------------------------------------------------------"
  demonstrate58
  putStrLn ""
  verifyIterationEqs
  putStrLn ""
  canonicalIso
  putStrLn ""
  streamDemo
  putStrLn ""
  inductionDemo
  putStrLn ""
  runAllProofs
  putStrLn ""
  runAllProperties
  putStrLn ""
  putStrLn "All demonstrations complete."
