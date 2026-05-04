{-# LANGUAGE ScopedTypeVariables #-}

-- |
-- Module      : Proofs
-- Description : Equational reasoning proofs for the Yoneda machinery.
--
-- We prove three central facts from "The Yoneda Perspective":
--
--   * 'proof_homOrderCat'      — Hom(m, n) on (N_<=k, <=) computes correctly.
--   * 'proof_representableId'  — h_x preserves identity morphisms.
--   * 'proof_yonedaRoundTrip'  — Yoneda lemma round-trip identity.
--   * 'proof_identityCriterion'— Distinct objects have distinct representables.
--
-- Each proof is presented as a structured equational derivation in comments,
-- with an executable check that evaluates the equality at concrete values.

module Proofs
  ( proof_homOrderCat
  , proof_representableId
  , proof_yonedaRoundTrip
  , proof_identityCriterion
  , runAllProofs
  ) where

import FiniteCat
  ( Mor (..)
  , FiniteCat (..)
  , orderCat
  )
import Yoneda
  ( Presheaf (..)
  , representable
  , yonedaWitness
  , isoOfRepresentables
  )

-- ----------------------------------------------------------------------
-- Proof 1: Hom(m, n) on (N_<=k, <=) is a singleton iff m <= n
-- ----------------------------------------------------------------------

-- |
-- We prove that for cat = orderCat k, length (hom cat m n) = 1 iff m <= n.
--
--   length (hom cat m n)
-- = { definition of hom in orderCat }
--   length [Mor (...) m n | m <= n]
-- = { list comprehension with single guard }
--   if m <= n then 1 else 0
-- QED.
--
proof_homOrderCat :: Int -> Int -> Int -> Either String ()
proof_homOrderCat k m n
  | m < 0 || n < 0 || m > k || n > k = Right ()  -- vacuous range
  | otherwise =
      let cat      = orderCat k
          actual   = length (hom cat m n)
          expected = if m <= n then 1 else 0
      in if actual == expected
           then Right ()
           else Left $ "proof_homOrderCat failed at (k,m,n)=("
                      ++ show (k, m, n) ++ "): "
                      ++ show actual ++ " /= " ++ show expected

-- ----------------------------------------------------------------------
-- Proof 2: Representable preserves identity
-- ----------------------------------------------------------------------

-- |
-- For h_x = Hom(-, x) and any f : z -> x,
--
--   h_x(id_z) f
-- = { definition of representable.onMor: onMor g elt = compose elt g }
--   compose cat f (identity cat z)
-- = { left identity law in C: compose f id = f }
--   f
-- QED.
--
-- Executable check: for orderCat k, onMor (representable cat x) (id_z) f
-- has the same name as f for all valid (x, z, f).
proof_representableId :: Int -> Int -> Either String ()
proof_representableId k x
  | x < 0 || x > k = Right ()
  | otherwise =
      let cat = orderCat k
          h_x = representable cat x
          checks =
            [ (z, f, onMor h_x (identity cat z) f)
            | z <- objects cat
            , f <- hom cat z x
            ]
          bad = [ c | c@(_, expected, got) <- checks, got /= Just expected ]
      in if null bad
           then Right ()
           else Left $ "proof_representableId failed: " ++ show bad

-- ----------------------------------------------------------------------
-- Proof 3: Yoneda lemma round-trip
-- ----------------------------------------------------------------------

-- |
-- For alpha : h_x -> F a natural transformation, set u = alpha_x (id_x).
-- Then for any f : z -> x,
--
--   alpha_z f
-- = { naturality of alpha at f : z -> x, applied to id_x in h_x(x):
--     alpha_z (h_x(f) id_x) = F(f) (alpha_x id_x) }
--   F(f) (alpha_x id_x)
-- = { definition of u }
--   F(f) u
-- = { definition of yonedaInverse }
--   yonedaInverse cat F u x z f.
-- QED.
--
-- We check both
--   (i) the identity natural transformation alpha = id_{h_x}, and
--   (ii) the constant natural transformation into a tag presheaf,
-- which together cover representable and non-representable targets.
proof_yonedaRoundTrip :: Int -> Int -> Either String ()
proof_yonedaRoundTrip k x
  | x < 0 || x > k = Right ()
  | otherwise =
      let cat        = orderCat k
          h_x        = representable cat x
          alphaId    = \_z f -> f
          tag        = Mor "tag" 0 0
          tagPre     = Presheaf
                         { onObj = \_ -> [tag]
                         , onMor = \_ elt -> Just elt
                         }
          alphaConst = \_z _f -> tag
          casesId =
            [ (z, morName f, yonedaWitness cat h_x alphaId x z f)
            | z <- objects cat
            , f <- hom cat z x
            ]
          casesConst =
            [ (z, morName f, yonedaWitness cat tagPre alphaConst x z f)
            | z <- objects cat
            , f <- hom cat z x
            ]
          bad = [ c | c@(_, _, ok) <- casesId ++ casesConst, not ok ]
      in if null bad
           then Right ()
           else Left $ "proof_yonedaRoundTrip failed: " ++ show bad

-- ----------------------------------------------------------------------
-- Proof 4: Identity criterion (Yoneda corollary)
-- ----------------------------------------------------------------------

-- |
-- In the order category (N_<=k, <=) we prove
--
--   isoOfRepresentables cat x y  =  (x == y).
--
--   isoOfRepresentables cat x y
-- = { definition }
--   sameProfile && exists (f, g). f . g = id_y, g . f = id_x
-- = { only id_x : x -> x exists in N_<= and only id_y : y -> y in N_<=,
--     so f : x -> y and g : y -> x require x <= y and y <= x }
--   sameProfile && x == y
-- = { profile equality is implied by x == y }
--   x == y
-- QED.
--
proof_identityCriterion :: Int -> Either String ()
proof_identityCriterion k =
  let cat = orderCat k
      checks =
        [ (x, y, isoOfRepresentables cat x y, x == y)
        | x <- objects cat
        , y <- objects cat
        ]
      bad = [ c | c@(_, _, got, expected) <- checks, got /= expected ]
  in if null bad
       then Right ()
       else Left $ "proof_identityCriterion failed: " ++ show bad

-- ----------------------------------------------------------------------
-- Driver
-- ----------------------------------------------------------------------

runAllProofs :: IO ()
runAllProofs = do
  putStrLn "--- Equational Reasoning Proof Checks ---"
  report "proof_homOrderCat (k=5)" $
    sequence_ [ proof_homOrderCat 5 m n | m <- [0..5], n <- [0..5] ]
  report "proof_representableId (k=5)" $
    sequence_ [ proof_representableId 5 x | x <- [0..5] ]
  report "proof_yonedaRoundTrip (k=4)" $
    sequence_ [ proof_yonedaRoundTrip 4 x | x <- [0..4] ]
  report "proof_identityCriterion (k=6)" $
    proof_identityCriterion 6
  where
    report :: String -> Either String () -> IO ()
    report label res = case res of
      Right () -> putStrLn $ "  PASS  " ++ label
      Left e   -> putStrLn $ "  FAIL  " ++ label ++ ": " ++ e
