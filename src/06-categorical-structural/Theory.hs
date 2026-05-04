{-# LANGUAGE GADTs #-}
-- | Theory: a tiny Lawvere-style algebraic theory of pointed unary structures.
--
-- We model the theory T_succ:
--   * one sort X
--   * one constant zero : 1 -> X
--   * one unary operation succ : X -> X
--   * no equations.
--
-- A model of T_succ in Set is a triple (carrier, zero-element, succ-function).
module Theory
  ( Op(..)
  , opName
  ) where

-- | The operation symbols of T_succ.
--   Every operation is either the constant 'OpZero' or the unary 'OpSucc'.
data Op where
  OpZero :: Op            -- 0-ary
  OpSucc :: Op            -- 1-ary
  deriving (Eq, Show)

-- | Human-readable label for an operation symbol.
opName :: Op -> String
opName OpZero = "zero"
opName OpSucc = "succ"
