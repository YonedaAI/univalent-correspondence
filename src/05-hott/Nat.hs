{-# LANGUAGE DataKinds #-}
{-# LANGUAGE GADTs #-}
{-# LANGUAGE KindSignatures #-}
{-# LANGUAGE PolyKinds #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE UndecidableInstances #-}

-- | Natural numbers as the inductive type, both as a value-level GADT and
-- a type-level kind. The value-level form mirrors the HoTT inductive
-- definition; the type-level form lets us state the Curry-Howard slogan
-- ``58 is a term in @Nat@'' at the type level.
--
-- Companion to: papers/05-hott/latex/05-hott.tex Section 3.
module Nat
  ( -- * Value-level naturals
    Nat (..)
  , toInt
  , fromInt
  , add
  , mul
  -- * Type-level naturals
  , N (..)
  , SNat (..)
  , addT
  -- * The numeral 58
  , fiftyEight
  ) where

import Path (Path (..))

-- | The inductive type @N@ with constructors @Zero@ and @Succ@.
--
-- Agda-style:
--
-- > data Nat : Set where
-- >   zero : Nat
-- >   succ : Nat -> Nat
data Nat = Zero | Succ Nat
  deriving (Eq, Show)

-- | Convert a natural to a Haskell @Int@ (for display).
toInt :: Nat -> Int
toInt Zero     = 0
toInt (Succ n) = 1 + toInt n

-- | Convert from a non-negative @Int@.
fromInt :: Int -> Nat
fromInt n
  | n <= 0    = Zero
  | otherwise = Succ (fromInt (n - 1))

-- | Addition on @Nat@ defined by recursion on the first argument
-- (mirrors @rec_N@).
add :: Nat -> Nat -> Nat
add Zero     n = n
add (Succ m) n = Succ (add m n)

-- | Multiplication.
mul :: Nat -> Nat -> Nat
mul Zero     _ = Zero
mul (Succ m) n = add n (mul m n)

-- | The numeral 58, constructed exactly as in the paper:
--
-- > 58 = succ^58 zero
fiftyEight :: Nat
fiftyEight = iterate Succ Zero !! 58

-- | Type-level natural numbers (the inductive kind).
data N = Z | S N

-- | Singleton type for type-level naturals: a value of @SNat n@ is a
-- runtime witness that the natural at the type level is @n@.
data SNat (n :: N) where
  SZ :: SNat 'Z
  SS :: SNat n -> SNat ('S n)

-- | Type-level addition.
type family AddT (m :: N) (n :: N) :: N where
  AddT 'Z     n = n
  AddT ('S m) n = 'S (AddT m n)

-- | Singleton-level addition; produces a 'Path' witness in 'Path.Path'
-- when the type-level computation has fired.
addT :: SNat m -> SNat n -> SNat (AddT m n)
addT SZ     n = n
addT (SS m) n = SS (addT m n)

-- | Smoke test: a path witnessing @AddT (S Z) (S Z) = S (S Z)@.
--
-- The fact that this typechecks at all is the Haskell-level analogue of
-- "1 + 1 = 2 reduces by computation"; in Cubical Agda the same equation
-- holds judgmentally.
_oneOneTwo :: Path (AddT ('S 'Z) ('S 'Z)) ('S ('S 'Z))
_oneOneTwo = Refl
