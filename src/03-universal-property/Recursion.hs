{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE LambdaCase #-}

-- |
-- Module      : Recursion
-- Description : Generic initial-algebra (Mu f) and catamorphism (cata).
-- Series      : Univalent Correspondence, Paper 03 of 6+1
-- Author      : YonedaAI Research
-- Date        : 2026-05-03
--
-- Implements the generic least-fixed-point construction `Mu f` and the
-- catamorphism `cata`, then specialises to the natural numbers via the
-- functor `NatF X = 1 + X`. Provides a round-trip between the direct
-- Peano representation in `NNO` and this generic representation.
module Recursion
  ( Mu (..)
  , cata
  , NatF (..)
  , GenNat
  , genZero
  , genSucc
  , genRec
  , peanoToGen
  , genToInt
  ) where

import           NNO (Nat (..))

-- | The least fixed point of an endofunctor: an initial F-algebra
-- carrier.
--
-- Caveat: in a categorical setting `Mu f` denotes the initial algebra
-- (the carrier of finite, well-founded F-trees). Because Haskell is
-- lazy and non-strict, the type below is inhabited by additional
-- non-well-founded values such as @let x = Mu (SuccF x) in x@. The
-- universal-property results stated in the paper apply only to total
-- finite values; users should restrict attention to those when
-- transporting proofs.
newtype Mu f = Mu { unMu :: f (Mu f) }

-- | The catamorphism: the unique morphism Mu f -> a induced by an algebra
-- (a, alpha : f a -> a). This is the universal-property recursor in its
-- generic form.
cata :: Functor f => (f a -> a) -> Mu f -> a
cata alpha = alpha . fmap (cata alpha) . unMu

-- | Endofunctor for natural numbers: NatF X = 1 + X.
data NatF a = ZeroF | SuccF a deriving (Show, Functor)

-- | Generic natural numbers as Mu NatF.
type GenNat = Mu NatF

-- | The two constructors as morphisms 1 -> GenNat and GenNat -> GenNat.
genZero :: GenNat
genZero = Mu ZeroF

genSucc :: GenNat -> GenNat
genSucc n = Mu (SuccF n)

-- | The generic recursion combinator: instance of the NNO universal
-- property for the carrier Mu NatF.
genRec :: x -> (x -> x) -> GenNat -> x
genRec x0 f = cata $ \case
  ZeroF   -> x0
  SuccF y -> f y

-- | The canonical iso `Nat -> GenNat` from Proposition 7.2.
peanoToGen :: Nat -> GenNat
peanoToGen Z     = genZero
peanoToGen (S n) = genSucc (peanoToGen n)

-- | Recover an Int from a generic Mu NatF, demonstrating the unique map
-- back to (Int, 0, +1).
genToInt :: GenNat -> Int
genToInt = genRec 0 (+1)
