{-# LANGUAGE DeriveFunctor #-}

-- |
-- Module      : Coalgebra
-- Description : Final coalgebras and codata: streams as Nu (A x -).
-- Series      : Univalent Correspondence, Paper 03 of 6+1
-- Author      : YonedaAI Research
-- Date        : 2026-05-03
--
-- The dual of `Mu`: the greatest fixed point `Nu` and the anamorphism
-- `ana` --- the unique morphism into a final coalgebra. Specialised to
-- streams (Theorem 6.2 of the paper).
module Coalgebra
  ( Nu (..)
  , ana
  , StreamF (..)
  , Stream
  , streamHead
  , streamTail
  , streamTake
  , naturals
  , fibs
  ) where

-- | Greatest fixed point of an endofunctor.
newtype Nu f = Nu { unNu :: f (Nu f) }

-- | The anamorphism: unique morphism a -> Nu f given a coalgebra
-- (a, gamma : a -> f a). This is the corecursion combinator.
ana :: Functor f => (a -> f a) -> a -> Nu f
ana gamma = Nu . fmap (ana gamma) . gamma

-- | Stream functor: StreamF a x = a x x.
data StreamF a x = Cons a x deriving Functor

-- | Streams as the final coalgebra of (a x -).
type Stream a = Nu (StreamF a)

streamHead :: Stream a -> a
streamHead s = case unNu s of Cons x _ -> x

streamTail :: Stream a -> Stream a
streamTail s = case unNu s of Cons _ t -> t

-- | Observe the first n elements.
streamTake :: Int -> Stream a -> [a]
streamTake n s
  | n <= 0    = []
  | otherwise = streamHead s : streamTake (n - 1) (streamTail s)

-- | The naturals as an anamorphism on (Integer, \n -> (n, n+1)). We use
-- Integer (not Int) so the mathematical claim "stream of all naturals"
-- is not silently truncated by machine-word overflow.
naturals :: Stream Integer
naturals = ana (\n -> Cons n (n + 1)) 0

-- | The Fibonacci stream as an anamorphism on ((Integer,Integer),
-- \(a,b) -> (a, (b, a+b))). Integer-valued for the same reason as
-- `naturals`.
fibs :: Stream Integer
fibs = ana (\(a, b) -> Cons a (b, a + b)) (0, 1)
