-- |
-- Module      : Main
-- Description : Demonstration of the von Neumann and Zermelo encodings.
-- Copyright   : (c) YonedaAI Research, 2026
--
-- This program is the runnable demonstration accompanying
-- /papers/02-set-theoretic/02-set-theoretic.tex. It:
--
--   * builds the natural numbers 0..6 in both encodings,
--   * displays them as raw HFSet braces (showing they are different sets),
--   * verifies the Peano axioms by construction (e.g. injectivity of succ),
--   * computes addition and multiplication on both encodings,
--   * applies the canonical isomorphism @\Phi : VNNat -> ZNat@,
--   * exhibits a junk theorem: @1 \in 3@ is true under VN, false under Z.

module Main where

import HFSet
import Peano
import VonNeumann
import Zermelo

main :: IO ()
main = do
  putStrLn "=================================================================="
  putStrLn "Paper 02: The Set-Theoretic Perspective -- Demo"
  putStrLn "=================================================================="
  putStrLn ""

  putStrLn "1. Both encodings, side by side, for n = 0..6:"
  putStrLn "------------------------------------------------------------------"
  mapM_ printPair [0..6]
  putStrLn ""

  putStrLn "2. Cardinalities differ by encoding:"
  putStrLn "------------------------------------------------------------------"
  mapM_ printCard [0..5]
  putStrLn ""

  putStrLn "3. Peano axioms: bounded smoke tests on finite ranges:"
  putStrLn "------------------------------------------------------------------"
  verifyPeano

  putStrLn ""
  putStrLn "4. Arithmetic via the Peano typeclass (encoding-independent):"
  putStrLn "------------------------------------------------------------------"
  let v3 = vnEncode 3 ; v4 = vnEncode 4
  let z3 = zEncode  3 ; z4 = zEncode  4
  putStrLn $ "VN: 3 + 4 = " ++ show (toInt (add v3 v4 :: VNNat)) ++ " (should be 7)"
  putStrLn $ "Z:  3 + 4 = " ++ show (toInt (add z3 z4 :: ZNat))  ++ " (should be 7)"
  putStrLn $ "VN: 3 * 4 = " ++ show (toInt (mul v3 v4 :: VNNat)) ++ " (should be 12)"
  putStrLn $ "Z:  3 * 4 = " ++ show (toInt (mul z3 z4 :: ZNat))  ++ " (should be 12)"
  putStrLn ""

  putStrLn "5. The canonical isomorphism Phi : VNNat -> ZNat:"
  putStrLn "------------------------------------------------------------------"
  let v5 = vnEncode 5
  let z5 = peanoIsomorphism v5 :: ZNat
  let v5' = peanoIsomorphism z5 :: VNNat
  putStrLn $ "VN(5) = " ++ show v5
  putStrLn $ "Phi(VN(5)) = " ++ show z5
  putStrLn $ "Phi^{-1}(Phi(VN(5))) = " ++ show v5'
  putStrLn $ "Round-trip preserves equality: " ++ show (v5' == v5)
  putStrLn ""

  putStrLn "6. Junk theorem: '2 in 3' is encoding-relative."
  putStrLn "------------------------------------------------------------------"
  junkTheoremDemo
  putStrLn ""

  putStrLn "7. Membership-vs-subset: in VN they coincide on omega; in Z they don't."
  putStrLn "------------------------------------------------------------------"
  membershipSubsetDemo
  putStrLn ""

  putStrLn "8. The Benacerraf table: encoding-dependent answers."
  putStrLn "------------------------------------------------------------------"
  benacerrafTable
  putStrLn ""

  putStrLn "Demo complete."

-- | Print a side-by-side row for a single n.
printPair :: Int -> IO ()
printPair n = do
  let v = vnEncode n
  let z = zEncode  n
  putStrLn $ "n = " ++ show n
  putStrLn $ "  VN: " ++ show v
  putStrLn $ "  Z : " ++ show z

-- | Print cardinalities for a single n.
printCard :: Int -> IO ()
printCard n = do
  let v = vnEncode n ; z = zEncode n
  putStrLn $ "n = " ++ show n ++
             "  |VN(n)| = " ++ show (cardinality (unVN v)) ++
             "   |Z(n)|  = " ++ show (cardinality (unZ  z))

-- | Verify (in particular cases, by construction) the Peano axioms.
verifyPeano :: IO ()
verifyPeano = do
  -- Axiom 3: succ(n) /= 0 for several n.
  let testZeroDist = and [ not (isZeroP (sucP (fromInt n :: VNNat))) | n <- [0..10] ]
                  && and [ not (isZeroP (sucP (fromInt n :: ZNat)))  | n <- [0..10] ]
  putStrLn $ "  Axiom 3 (succ(n) /= 0) for n in 0..10:  " ++ show testZeroDist

  -- Axiom 4: succ injective for several pairs.
  let injVN = and [ ((sucP (fromInt m :: VNNat)) == (sucP (fromInt n :: VNNat)))
                       == (m == n)
                  | m <- [0..6], n <- [0..6] ]
  let injZ  = and [ ((sucP (fromInt m :: ZNat)) == (sucP (fromInt n :: ZNat)))
                       == (m == n)
                  | m <- [0..6], n <- [0..6] ]
  putStrLn $ "  Axiom 4 (succ injective) for VN, m,n in 0..6: " ++ show injVN
  putStrLn $ "  Axiom 4 (succ injective) for Z,  m,n in 0..6: " ++ show injZ

  -- Round-trip: fromInt . toInt = id on a finite range.
  let rtVN = and [ toInt (fromInt n :: VNNat) == n | n <- [0..10] ]
  let rtZ  = and [ toInt (fromInt n :: ZNat)  == n | n <- [0..10] ]
  putStrLn $ "  Round-trip toInt . fromInt = id on 0..10 (VN): " ++ show rtVN
  putStrLn $ "  Round-trip toInt . fromInt = id on 0..10 (Z):  " ++ show rtZ

-- | The canonical junk theorem: 'm \in n' is encoding-relative for m+1 < n.
--   For adjacent ordinals (m+1 = n) BOTH encodings agree (m \in m+1) since
--   that follows from the successor definitions in both. The interesting
--   discrepancy is for non-adjacent pairs.
junkTheoremDemo :: IO ()
junkTheoremDemo = do
  let one_vN   = vnEncode 1 ; three_vN = vnEncode 3
  let one_Z    = zEncode  1 ; three_Z  = zEncode  3
  putStrLn $ "  VN: '1 in 3' = " ++ show (one_vN `inVN` three_vN)
                                ++ "   (true: 3 = {0,1,2})"
  putStrLn $ "  Z:  '1 in 3' = " ++ show (one_Z  `inZ`  three_Z)
                                ++ "   (false: 3 = {2} only)"

  -- Even more dramatic: '1 in 17' is true in vN, false in Z.
  let seventeen_vN = vnEncode 17
  let seventeen_Z  = zEncode  17
  putStrLn $ "  VN: '1 in 17' = " ++ show (one_vN `inVN` seventeen_vN)
  putStrLn $ "  Z:  '1 in 17' = " ++ show (one_Z  `inZ`  seventeen_Z)

-- | Demo: in VN, m \subsetneq n iff m \in n. In Z, this fails.
membershipSubsetDemo :: IO ()
membershipSubsetDemo = do
  let v0 = vnEncode 0; v2 = vnEncode 2
  let z0 = zEncode  0; z2 = zEncode  2
  putStrLn $ "  VN: 0 in 2 = " ++ show (v0 `inVN` v2)
                              ++ ", 0 subset 2 = "  ++ show (v0 `subsetVN` v2)
  putStrLn $ "  Z:  0 in 2 = " ++ show (z0 `inZ`  z2)
                              ++ ", 0 subset 2 = "  ++ show (z0 `subsetZ`  z2)
  putStrLn "  --> In VN, both are True (membership = proper subset on omega)."
  putStrLn "  --> In Z,  membership is False but subset is True (the relation diverges)."

-- | A Benacerraf-style table: for several (m,n) pairs, show whether
--   'm in n' and 'm subset n' hold under each encoding. Encoding-dependent
--   answers are precisely the junk theorems.
benacerrafTable :: IO ()
benacerrafTable = do
  putStrLn "  m  n   |  VN: m in n   VN: m sub n   |   Z: m in n   Z: m sub n"
  putStrLn "  -------+------------------------------+----------------------------"
  let pairs = [(0,1),(0,2),(1,2),(0,3),(1,3),(2,3),(1,4),(2,5)]
  mapM_ (showRow) pairs
  where
    showRow (m,n) = do
      let vm = vnEncode m; vn' = vnEncode n
      let zm = zEncode  m; zn' = zEncode  n
      putStrLn $ "  " ++ show m ++ "  " ++ show n ++ "   | " ++
        pad (show (vm `inVN` vn'))    ++ "      " ++
        pad (show (vm `subsetVN` vn')) ++ "      | " ++
        pad (show (zm `inZ` zn'))     ++ "      " ++
        pad (show (zm `subsetZ` zn'))
    pad s = s ++ replicate (5 - length s) ' '
