-- |
-- Module      : NNO
-- Description : The natural numbers object as the initial pointed dynamical
--               system, with its universal-property recursion combinator.
-- Series      : Univalent Correspondence, Paper 03 of 6+1
-- Author      : YonedaAI Research
-- Date        : 2026-05-03
--
-- Implements the natural numbers object (NNO) directly as the initial
-- algebra for the endofunctor F X = 1 + X. The function `nnoRec` is the
-- unique morphism guaranteed by the universal property: for every pointed
-- dynamical system (X, x0, f), there is a unique map h : Nat -> X with
-- h(Z) = x0 and h(S n) = f (h n).
module NNO
  ( Nat (..)
  , nnoRec
  , primRec
  , peano
  , fromPeano
  , fromPeanoInteger
  , add
  , mul
  , powN
  ) where

-- | The natural numbers object: initial algebra for F X = 1 + X.
data Nat = Z | S Nat deriving (Show, Eq, Ord)

-- | The recursion (iteration) combinator from the NNO universal property.
--
-- For any (x0 : X) and (f : X -> X), `nnoRec x0 f` is the unique function
-- h : Nat -> X with h Z = x0 and h (S n) = f (h n). It computes f^n x0.
nnoRec :: x -> (x -> x) -> Nat -> x
nnoRec x0 _ Z     = x0
nnoRec x0 f (S n) = f (nnoRec x0 f n)

-- | Primitive recursion (Proposition 3.4 of the paper). The step function
-- now has access to the predecessor as well as the recursive value.
--
-- primRec x0 k Z       = x0
-- primRec x0 k (S n)   = k n (primRec x0 k n)
primRec :: x -> (Nat -> x -> x) -> Nat -> x
primRec x0 k = snd . nnoRec (Z, x0) (\(n, v) -> (S n, k n v))

-- | Convert a non-negative Haskell `Int` to a Peano `Nat`.
--
-- Used for demonstrations only; for large n this is impractical. Note
-- that all non-positive inputs are clamped to `Z`; the caller is
-- responsible for ensuring `n >= 0`. (A more principled alternative
-- would be `Numeric.Natural.Natural -> Nat` or `Int -> Maybe Nat`; we
-- keep the clamping convention to keep the demo code uncluttered.)
peano :: Int -> Nat
peano n
  | n <= 0    = Z
  | otherwise = S (peano (n - 1))

-- | Convert a Peano `Nat` back to `Int`.
fromPeano :: Nat -> Int
fromPeano Z     = 0
fromPeano (S n) = 1 + fromPeano n

-- | Convert a Peano `Nat` to `Integer` (for demonstrations involving large
-- arithmetic results).
fromPeanoInteger :: Nat -> Integer
fromPeanoInteger Z     = 0
fromPeanoInteger (S n) = 1 + fromPeanoInteger n

-- | Addition defined by the universal property: add m n = m + n via
-- iteration of the successor.
add :: Nat -> Nat -> Nat
add m = nnoRec m S

-- | Multiplication: mul m n = m * n.
mul :: Nat -> Nat -> Nat
mul m = nnoRec Z (add m)

-- | Power: powN m n = m^n.
powN :: Nat -> Nat -> Nat
powN m = nnoRec (S Z) (mul m)
