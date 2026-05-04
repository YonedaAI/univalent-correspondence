-- |
-- Module      : Proofs
-- Description : Equational reasoning proofs for the NNO universal property,
--               the recursion combinator, and the stream final coalgebra.
-- Series      : Univalent Correspondence, Paper 03 of 6+1
-- Author      : YonedaAI Research
-- Date        : 2026-05-03
--
-- For each theorem we present an equational reasoning proof in comment
-- form, accompanied by an executable `proof_*` function that checks the
-- equality at concrete witnesses. This gives a lightweight machine-check
-- that mirrors the human proof.
module Proofs
  ( runAllProofs
  , proof_recZ
  , proof_recS
  , proof_recIdentity
  , proof_addZeroRight
  , proof_addAssocAt
  , proof_isoRoundTrip
  , proof_streamHeadAna
  , proof_streamTailAna
  , proof_fibRecurrence
  ) where

import           NNO          (Nat (..), nnoRec, peano, fromPeano, add)
import           Recursion    (genRec, peanoToGen)
import           Coalgebra    (streamHead, streamTail, streamTake, naturals,
                               fibs)

type Check = Either String ()

ok :: Check
ok = Right ()

bad :: String -> Check
bad msg = Left msg

check :: (Eq a, Show a) => String -> a -> a -> Check
check name lhs rhs
  | lhs == rhs = ok
  | otherwise  = bad $ name ++ ": " ++ show lhs ++ " /= " ++ show rhs

-- ---------------------------------------------------------------------------
-- Theorem 3.2 (i): rec(x0, f)(Z) = x0.
-- ---------------------------------------------------------------------------
--
--   nnoRec x0 f Z
-- = { definition of nnoRec, first equation }
--   x0
-- QED.
proof_recZ :: Int -> Check
proof_recZ x0 =
  check "rec-Z" (nnoRec x0 (+ 1) Z) x0

-- ---------------------------------------------------------------------------
-- Theorem 3.2 (ii): rec(x0, f)(S n) = f (rec(x0, f)(n)).
-- ---------------------------------------------------------------------------
--
--   nnoRec x0 f (S n)
-- = { definition of nnoRec, second equation }
--   f (nnoRec x0 f n)
-- QED.
proof_recS :: Int -> Int -> Check
proof_recS x0 k =
  let n = peano (abs k `mod` 20)
      f = (+ 1) :: Int -> Int
  in check "rec-S" (nnoRec x0 f (S n)) (f (nnoRec x0 f n))

-- ---------------------------------------------------------------------------
-- Lemma 4.1: rec(0, +1) = fromPeano (the unique map Nat -> Int into the
-- standard pointed dynamical system).
-- ---------------------------------------------------------------------------
--
-- By induction on n:
--
-- Case n = Z:
--   nnoRec 0 (+1) Z
-- = { rec-Z }
--   0
-- = { definition of fromPeano on Z }
--   fromPeano Z
--
-- Case n = S k (IH: nnoRec 0 (+1) k = fromPeano k):
--   nnoRec 0 (+1) (S k)
-- = { rec-S }
--   (nnoRec 0 (+1) k) + 1
-- = { IH }
--   fromPeano k + 1
-- = { definition of fromPeano on S }
--   fromPeano (S k)
-- QED.
proof_recIdentity :: Int -> Check
proof_recIdentity k =
  let n = peano (abs k `mod` 25)
  in check "rec-identity" (nnoRec (0 :: Int) (+ 1) n) (fromPeano n)

-- ---------------------------------------------------------------------------
-- Proposition 4.2: add n Z = n (right identity of addition).
-- ---------------------------------------------------------------------------
--
-- Recall add m = nnoRec m S, so add m n = nnoRec m S n.
--
--   add n Z
-- = { definition of add }
--   nnoRec n S Z
-- = { rec-Z }
--   n
-- QED.
proof_addZeroRight :: Int -> Check
proof_addZeroRight k =
  let n = peano (abs k `mod` 25)
  in check "add-right-id" (add n Z) n

-- ---------------------------------------------------------------------------
-- Proposition 4.3: add (add a b) c = add a (add b c) at concrete witnesses.
-- ---------------------------------------------------------------------------
--
-- A full proof is by induction on c using the universal property. This
-- function only checks the equality at one concrete witness; the
-- accompanying QuickCheck property `prop_addAssoc` provides additional
-- (bounded, randomised, non-exhaustive) coverage.
proof_addAssocAt :: Int -> Int -> Int -> Check
proof_addAssocAt a b c =
  let na = peano (abs a `mod` 12)
      nb = peano (abs b `mod` 12)
      nc = peano (abs c `mod` 12)
  in check "add-assoc"
       (add (add na nb) nc)
       (add na (add nb nc))

-- ---------------------------------------------------------------------------
-- Proposition 7.2 (one direction): genRec Z S . peanoToGen = id_Nat.
-- ---------------------------------------------------------------------------
--
-- We prove this direction by induction on n. The reverse direction
-- peanoToGen . genRec Z S = id_GenNat holds for total finite values of
-- GenNat but is not checked here; total well-foundedness of GenNat is
-- discussed in the paper (cf. the caveat on Mu in Recursion.hs).
--
-- Case Z:
--   genRec Z S (peanoToGen Z)
-- = { definition of peanoToGen on Z }
--   genRec Z S genZero
-- = { definition of genRec on ZeroF (algebra branch) }
--   Z
--
-- Case S n (IH: genRec Z S (peanoToGen n) = n):
--   genRec Z S (peanoToGen (S n))
-- = { definition of peanoToGen on S }
--   genRec Z S (genSucc (peanoToGen n))
-- = { definition of genRec on SuccF (algebra branch) }
--   S (genRec Z S (peanoToGen n))
-- = { IH }
--   S n
-- QED.
proof_isoRoundTrip :: Int -> Check
proof_isoRoundTrip k =
  let n = peano (abs k `mod` 25)
  in check "iso-round-trip" (genRec Z S (peanoToGen n)) n

-- ---------------------------------------------------------------------------
-- Theorem 6.2 (i): streamHead (ana g s) = pi1 (g s) where g s = Cons a s'.
-- For naturals = ana (\n -> Cons n (n+1)) 0, we have streamHead naturals = 0.
-- ---------------------------------------------------------------------------
--
--   streamHead naturals
-- = { definition of naturals = ana g 0 with g n = Cons n (n+1) }
--   streamHead (ana g 0)
-- = { definition of ana: ana g a = Nu (fmap (ana g) (g a)) }
--   streamHead (Nu (Cons 0 (ana g 1)))
-- = { definition of streamHead via unNu/Cons }
--   0
-- QED.
proof_streamHeadAna :: Check
proof_streamHeadAna = check "stream-head-ana" (streamHead naturals) (0 :: Integer)

-- ---------------------------------------------------------------------------
-- Theorem 6.2 (ii): streamHead (streamTail (ana g s)) is the head of the
-- next state. For naturals: streamHead (streamTail naturals) = 1.
-- ---------------------------------------------------------------------------
--
--   streamTail naturals
-- = { definition of naturals = ana g 0 }
--   streamTail (Nu (Cons 0 (ana g 1)))
-- = { definition of streamTail }
--   ana g 1
-- so
--   streamHead (streamTail naturals) = streamHead (ana g 1) = 1.
-- QED.
proof_streamTailAna :: Check
proof_streamTailAna =
  check "stream-tail-ana" (streamHead (streamTail naturals)) (1 :: Integer)

-- ---------------------------------------------------------------------------
-- Proposition 6.3 (Fibonacci recurrence): for fibs = ana g (0,1) with
-- g (a,b) = Cons a (b, a+b), we have fibs!!(n+2) = fibs!!(n+1) + fibs!!n.
-- ---------------------------------------------------------------------------
--
-- The proof is by unfolding ana twice and using addition's definition; we
-- check the recurrence at concrete indices.
proof_fibRecurrence :: Check
proof_fibRecurrence =
  let xs = streamTake 15 fibs
      checks =
        [ xs !! (i + 2) == xs !! (i + 1) + xs !! i | i <- [0 .. 12] ]
  in if and checks
       then ok
       else bad "fib-recurrence: failed at some index in [0..12]"

-- ---------------------------------------------------------------------------
-- Driver.
-- ---------------------------------------------------------------------------

runOne :: String -> Check -> IO Bool
runOne name r = case r of
  Right () -> putStrLn ("  PASS  " ++ name) >> pure True
  Left msg -> putStrLn ("  FAIL  " ++ name ++ " :: " ++ msg) >> pure False

runAllProofs :: IO ()
runAllProofs = do
  putStrLn "--- Equational reasoning proof checks ---"
  results <-
    sequence
      [ runOne "Theorem 3.2 (rec-Z)         "       (proof_recZ 7)
      , runOne "Theorem 3.2 (rec-S)         "       (proof_recS 0 17)
      , runOne "Lemma 4.1 (rec-identity)    "       (proof_recIdentity 13)
      , runOne "Prop 4.2 (add right id)     "       (proof_addZeroRight 9)
      , runOne "Prop 4.3 (add assoc witness)"       (proof_addAssocAt 3 4 5)
      , runOne "Prop 7.2 (iso round-trip)   "       (proof_isoRoundTrip 11)
      , runOne "Theorem 6.2(i)  (head ana)  "       proof_streamHeadAna
      , runOne "Theorem 6.2(ii) (tail ana)  "       proof_streamTailAna
      , runOne "Prop 6.3 (fib recurrence)   "       proof_fibRecurrence
      ]
  let total = length results
      passed = length (filter id results)
  putStrLn $ "Proof checks: " ++ show passed ++ " / " ++ show total ++ " passed"
