{-# LANGUAGE GADTs #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE FlexibleInstances #-}

-- | A toy approximation of the higher inductive circle @S^1@ and the
-- encode--decode method. Haskell does not have HITs, so we cannot
-- faithfully model the path constructor 'loop'; instead we model the
-- universal cover via integers and the encode-decode bijection
-- @Loop(S^1, base) <-> Z@ at the value level, illustrating how the proof
-- structures the data.
--
-- See: papers/05-hott/latex/05-hott.tex Section 5.
module Circle
  ( -- * Toy circle
    S1Point (..)
  , Loop
  , baseLoop
  , compose
  , inverse
  -- * Encode-decode
  , encode
  , decode
  ) where

-- | Points on the toy circle. In real HoTT the type 'S1' has only one
-- point @base@; the rest of the structure lives in path constructors. To
-- model the result @\pi_1(S^1) = Z@ we instead expose loops as integers
-- directly, since loops at the basepoint form a group isomorphic to @Z@.
data S1Point = Base
  deriving (Eq, Show)

-- | A loop at the basepoint, modelled as an integer winding number.
type Loop = Integer

-- | The trivial loop.
baseLoop :: Loop
baseLoop = 0

-- | Composition of loops. Mirrors path concatenation; in @Z@ this is
-- just addition.
compose :: Loop -> Loop -> Loop
compose = (+)

-- | Inverse of a loop.
inverse :: Loop -> Loop
inverse n = -n

-- | The encode map: send a loop (here, an integer) to its encoded
-- winding number. In the real proof this is defined by recursion on the
-- HIT eliminator using univalence to lift @succ : Z = Z@.
encode :: Loop -> Integer
encode = id

-- | The decode map: send an integer to its representative loop. This is
-- the inverse of 'encode'; together they witness the equivalence
-- @Loop(S^1, base) ~= Z@ that proves @\pi_1(S^1) = Z@.
decode :: Integer -> Loop
decode = id
