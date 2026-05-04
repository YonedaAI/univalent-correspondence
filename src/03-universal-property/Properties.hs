-- |
-- Module      : Properties
-- Description : QuickCheck properties for the natural numbers object,
--               its universal property, the recursion combinator, and the
--               final stream coalgebra.
-- Series      : Univalent Correspondence, Paper 03 of 6+1
-- Author      : YonedaAI Research
-- Date        : 2026-05-03
--
-- Each property corresponds to a theorem or proposition in the paper
-- "The Universal Property Perspective: Numbers as Initial Successor
-- Structures."
module Properties (runAllProperties) where

import           Test.QuickCheck

import           NNO          (Nat (..), nnoRec, primRec, peano, fromPeano,
                               fromPeanoInteger, add, mul, powN)
import           Recursion    (GenNat, genRec, genSucc, peanoToGen)
import           Coalgebra    (streamHead, streamTail, streamTake, naturals,
                               fibs)

-- | Generate small Peano naturals so that recursion is feasible.
newtype SmallNat = SmallNat { unSmall :: Nat } deriving Show

instance Arbitrary SmallNat where
  arbitrary = do
    n <- choose (0, 30 :: Int)
    pure (SmallNat (peano n))

-- | Generate even smaller naturals for double-nested recursion (e.g. powers).
newtype TinyNat = TinyNat { unTiny :: Nat } deriving Show

instance Arbitrary TinyNat where
  arbitrary = do
    n <- choose (0, 6 :: Int)
    pure (TinyNat (peano n))

-- ---------------------------------------------------------------------------
-- NNO universal property (Theorem 3.2, equations rec-Z and rec-S).
-- ---------------------------------------------------------------------------

-- | Property (rec-Z): nnoRec x0 f Z = x0.
prop_recZero :: Int -> Property
prop_recZero x0 = nnoRec x0 (+ 1) Z === x0

-- | Property (rec-S): nnoRec x0 f (S n) = f (nnoRec x0 f n).
prop_recSucc :: Int -> SmallNat -> Property
prop_recSucc x0 (SmallNat n) =
  nnoRec x0 f (S n) === f (nnoRec x0 f n)
  where f = (+ 1)

-- | Property: in the system (Int, 0, +1) the recursor recovers fromPeano.
prop_recIdentity :: SmallNat -> Property
prop_recIdentity (SmallNat n) =
  nnoRec (0 :: Int) (+ 1) n === fromPeano n

-- | Property: in the system (Integer, 1, *2), the recursor computes 2^n.
prop_recPowersOfTwo :: TinyNat -> Property
prop_recPowersOfTwo (TinyNat n) =
  nnoRec (1 :: Integer) (* 2) n === 2 ^ fromPeanoInteger n

-- | Property: uniqueness via memo-table. We materialise an arbitrary
-- function `h : Nat -> X` as a list `tab :: [X]` of length (k+1), where
-- the only constraint is that it satisfies the recursion equations
--
--     tab !! 0       = x0
--     tab !! (i + 1) = f (tab !! i)        for 0 <= i < k.
--
-- The universal property states that under these constraints `tab !! k`
-- is forced to equal `nnoRec x0 f (peano k)`. We verify this by building
-- the table independently (so the equality is not by definitional
-- unfolding of `nnoRec`).
prop_recUniqueness :: Int -> NonNegative Int -> Property
prop_recUniqueness x0 (NonNegative kRaw) =
  let k   = kRaw `mod` 30
      f   = \x -> x * 3 + 1
      tab = take (k + 1) (scanl (\acc _ -> f acc) x0 [0 :: Int ..])
  in (tab !! k) === nnoRec x0 f (peano k)

-- ---------------------------------------------------------------------------
-- Primitive recursion (Proposition 3.4).
-- ---------------------------------------------------------------------------

-- | Property: primRec x0 k Z = x0.
prop_primRecZero :: Integer -> Property
prop_primRecZero x0 =
  primRec x0 (\_ v -> v + 1) Z === x0

-- | Property: primRec x0 k (S n) = k n (primRec x0 k n).
prop_primRecSucc :: Integer -> SmallNat -> Property
prop_primRecSucc x0 (SmallNat n) =
  primRec x0 k (S n) === k n (primRec x0 k n)
  where k pn v = fromPeanoInteger pn + v + x0

-- | Property: primRec computes factorial correctly.
prop_factorial :: TinyNat -> Property
prop_factorial (TinyNat n) =
  fact n === product [1 .. fromPeanoInteger n]
  where
    fact :: Nat -> Integer
    fact = primRec 1 (\m acc -> (fromPeanoInteger m + 1) * acc)

-- ---------------------------------------------------------------------------
-- Arithmetic defined via the universal property (Section 4).
-- ---------------------------------------------------------------------------

-- | Property: add corresponds to integer addition.
prop_addCorrect :: SmallNat -> SmallNat -> Property
prop_addCorrect (SmallNat m) (SmallNat n) =
  fromPeano (add m n) === fromPeano m + fromPeano n

-- | Property: addition is associative.
prop_addAssoc :: SmallNat -> SmallNat -> SmallNat -> Property
prop_addAssoc (SmallNat a) (SmallNat b) (SmallNat c) =
  add (add a b) c === add a (add b c)

-- | Property: zero is a right identity for addition.
prop_addRightId :: SmallNat -> Property
prop_addRightId (SmallNat n) = add n Z === n

-- | Property: zero is a left identity for addition.
prop_addLeftId :: SmallNat -> Property
prop_addLeftId (SmallNat n) = add Z n === n

-- | Property: mul corresponds to integer multiplication.
prop_mulCorrect :: TinyNat -> TinyNat -> Property
prop_mulCorrect (TinyNat m) (TinyNat n) =
  fromPeanoInteger (mul m n) === fromPeanoInteger m * fromPeanoInteger n

-- | Property: powN m n = m^n.
prop_powCorrect :: TinyNat -> TinyNat -> Property
prop_powCorrect (TinyNat m) (TinyNat n) =
  fromPeanoInteger (powN m n) === fromPeanoInteger m ^ fromPeanoInteger n

-- ---------------------------------------------------------------------------
-- Canonical iso between Peano Nat and the generic Mu NatF (Proposition 7.2).
-- ---------------------------------------------------------------------------

-- | Property: peanoToGen followed by genRec Z S is the identity on Nat.
prop_peanoGenRoundTrip :: SmallNat -> Property
prop_peanoGenRoundTrip (SmallNat n) =
  genRec Z S (peanoToGen n) === n

-- | Property: peanoToGen preserves successors structurally, via the int
-- observation map.
prop_peanoGenObs :: SmallNat -> Property
prop_peanoGenObs (SmallNat n) =
  genRec (0 :: Int) (+ 1) (peanoToGen n) === fromPeano n

-- | Property: the canonical iso is an additive homomorphism. We
-- transport addition along `peanoToGen` by defining `genAdd`
-- independently on `GenNat` (via the universal property at that
-- carrier), then check that
--
--     peanoToGen (add m n) <-> genAdd (peanoToGen m) (peanoToGen n)
--
-- agree under the inverse `genRec Z S`.
prop_isoAddHom :: SmallNat -> SmallNat -> Property
prop_isoAddHom (SmallNat m) (SmallNat n) =
  let toG :: Nat -> GenNat
      toG = peanoToGen
      fromG :: GenNat -> Nat
      fromG = genRec Z S
      -- Addition on GenNat by iterating genSucc, mirroring `add` on Nat.
      genAdd :: GenNat -> Nat -> GenNat
      genAdd g = nnoRec g genSucc
  in fromG (genAdd (toG m) n) === add m n

-- ---------------------------------------------------------------------------
-- Final coalgebra of streams (Theorem 6.2).
-- ---------------------------------------------------------------------------

-- | Property: streamHead naturals = 0 and the n-th element is n.
prop_naturalsCorrect :: Property
prop_naturalsCorrect =
  streamTake 50 naturals === [0 .. 49]

-- | Property: streamTail naturals starts at 1.
prop_naturalsTail :: Property
prop_naturalsTail =
  streamHead (streamTail naturals) === 1

-- | Property: Fibonacci stream satisfies fibs(n+2) = fibs(n+1) + fibs(n).
prop_fibsRecurrence :: Property
prop_fibsRecurrence =
  conjoin [ xs !! (i + 2) === xs !! (i + 1) + xs !! i | i <- [0 .. 17] ]
  where xs = streamTake 20 fibs

-- | Property: streamTake n has length n (for n >= 0). Checked against
-- both `naturals` and `fibs` to give some coverage variation.
prop_streamTakeLength :: NonNegative Int -> Property
prop_streamTakeLength (NonNegative k) =
  let n = min k 200
  in    length (streamTake n naturals) === n
   .&&. length (streamTake n fibs)     === n

-- | Property: streamTake (n+1) s = streamHead s : streamTake n (streamTail s).
-- Verified at both `naturals` and `fibs`.
prop_streamTakeUnfold :: NonNegative Int -> Property
prop_streamTakeUnfold (NonNegative k) =
  let n = min k 50
      unfoldLaw s =
        streamTake (n + 1) s === streamHead s : streamTake n (streamTail s)
  in unfoldLaw naturals .&&. unfoldLaw fibs

-- ---------------------------------------------------------------------------
-- Driver.
-- ---------------------------------------------------------------------------

runAllProperties :: IO ()
runAllProperties = do
  putStrLn "--- QuickCheck Properties ---"

  putStrLn "[NNO universal property]"
  quickCheck prop_recZero
  quickCheck prop_recSucc
  quickCheck prop_recIdentity
  quickCheck prop_recPowersOfTwo
  quickCheck prop_recUniqueness

  putStrLn "[Primitive recursion]"
  quickCheck prop_primRecZero
  quickCheck prop_primRecSucc
  quickCheck prop_factorial

  putStrLn "[Arithmetic from the universal property]"
  quickCheck prop_addCorrect
  quickCheck prop_addAssoc
  quickCheck prop_addRightId
  quickCheck prop_addLeftId
  quickCheck prop_mulCorrect
  quickCheck prop_powCorrect

  putStrLn "[Canonical iso Nat <-> Mu NatF]"
  quickCheck prop_peanoGenRoundTrip
  quickCheck prop_peanoGenObs
  quickCheck prop_isoAddHom

  putStrLn "[Final coalgebra of streams]"
  quickCheck prop_naturalsCorrect
  quickCheck prop_naturalsTail
  quickCheck prop_fibsRecurrence
  quickCheck prop_streamTakeLength
  quickCheck prop_streamTakeUnfold
