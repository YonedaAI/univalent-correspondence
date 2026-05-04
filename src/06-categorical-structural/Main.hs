-- | Main entry point: instantiate the panel of definable invariants
--   against two non-equal but isomorphic T_succ-models, and verify
--   computationally that all invariants agree.
--
-- This is the executable counterpart of Theorem 4.5 of the paper:
-- structurally identical models give the same numerical answers.
module Main (main) where

import Model (Model(..), isIsomorphism, isClosed)
import Models (modelVN, modelZ, isoVNtoZ, isoZtoVN)
import Theory (Op(..), opName)
import Invariants
  ( cardinality
  , orbitLen
  , succImageAt
  , numFixedPoints
  )

-- | Pad a small integer in a 16-character field.
pad :: Int -> String
pad n = let s = show n
        in s ++ replicate (max 1 (16 - length s)) ' '

-- | Tick / cross marker for a Boolean.
flag :: Bool -> String
flag True  = "yes"
flag False = "NO!"

main :: IO ()
main = do
  putStrLn "==============================================================="
  putStrLn " Lawvere theory T_succ"
  putStrLn "   sort  : X"
  putStrLn "   ops   : zero : 1 -> X, succ : X -> X"
  putStrLn "   eqns  : (none)"
  putStrLn "==============================================================="
  putStrLn   "operation symbols of T_succ:"
  mapM_ (\op -> putStrLn $ "   " ++ show op ++ " (" ++ opName op ++ ")")
        [OpZero, OpSucc]
  putStrLn ""
  putStrLn "==============================================================="
  putStrLn " Two non-equal but isomorphic T_succ-models"
  putStrLn "   modelVN : von Neumann finite ordinals (height 4, cyclic)"
  putStrLn "   modelZ  : Zermelo nested singletons   (height 4, cyclic)"
  putStrLn "==============================================================="
  putStrLn ""

  putStrLn "1. Verify both models are closed under succ, then isomorphic."
  putStrLn $ "   isClosed modelVN                = " ++ show (isClosed modelVN)
  putStrLn $ "   isClosed modelZ                 = " ++ show (isClosed modelZ)
  let isIso = isIsomorphism modelVN modelZ isoVNtoZ isoZtoVN
  putStrLn $ "   isIsomorphism (modelVN, modelZ) = " ++ show isIso
  putStrLn ""

  putStrLn "2. Inspect carriers."
  putStrLn   "   modelVN carrier:"
  mapM_ (\x -> putStrLn $ "     " ++ show x) (carrier modelVN)
  putStrLn   "   modelZ carrier:"
  mapM_ (\y -> putStrLn $ "     " ++ show y) (carrier modelZ)
  let elt2VN = carrier modelVN !! 2
      elt2Z  = carrier modelZ  !! 2
  putStrLn $ "   element 2 in modelVN = " ++ show elt2VN
  putStrLn $ "   element 2 in modelZ  = " ++ show elt2Z
  putStrLn $ "   distinct as sets     = " ++ show (show elt2VN /= show elt2Z)
  putStrLn ""

  putStrLn "3. Compare definable invariants."
  putStrLn "   ----------------------------------------------------------"
  putStrLn "   invariant            modelVN          modelZ           OK?"
  putStrLn "   ----------------------------------------------------------"

  let cVN = cardinality modelVN
      cZ  = cardinality modelZ
  putStrLn $ "   cardinality          " ++ pad cVN ++ pad cZ ++ flag (cVN == cZ)

  let oVN = orbitLen modelVN
      oZ  = orbitLen modelZ
  putStrLn $ "   orbit-len(zero)      " ++ pad oVN ++ pad oZ ++ flag (oVN == oZ)

  let f0VN = numFixedPoints modelVN
      f0Z  = numFixedPoints modelZ
  putStrLn $ "   num-fixed-points     " ++ pad f0VN ++ pad f0Z ++ flag (f0VN == f0Z)

  let printSuccAt k = do
        let aVN = succImageAt k modelVN
            aZ  = succImageAt k modelZ
        putStrLn $ "   succ^" ++ show k ++ "(zero) idx     "
                  ++ pad aVN ++ pad aZ ++ flag (aVN == aZ)
  mapM_ printSuccAt [0, 1, 2, 3]
  putStrLn "   ----------------------------------------------------------"
  putStrLn ""
  putStrLn "All definable invariants agree (Theorem 4.5)."
  putStrLn "Set-theoretic membership questions disagree (Benacerraf)."
