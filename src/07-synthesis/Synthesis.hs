{-# LANGUAGE GADTs #-}
{-# LANGUAGE RankNTypes #-}
module Synthesis
  ( Perspective(..)
  , answer
  , agreement
  , Univalent(..)
  , transport
  ) where

data Perspective
  = Naive
  | SetTheoretic
  | UniversalProperty
  | Yoneda
  | HoTT
  | StructuralInvariant
  deriving (Eq, Show, Bounded, Enum)

answer :: Perspective -> Int -> Int
answer _ n = n

agreement :: Int -> [(Perspective, Int)]
agreement n = [(p, answer p n) | p <- [minBound .. maxBound]]

data Univalent a b where
  Refl  :: Univalent a a
  Equiv :: (a -> b) -> (b -> a) -> Univalent a b

transport :: Univalent a b -> a -> b
transport Refl          x = x
transport (Equiv to _)  x = to x
