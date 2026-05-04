-- |
-- Module      : Zermelo
-- Description : Zermelo's encoding of the natural numbers.
-- Copyright   : (c) YonedaAI Research, 2026
--
-- Ernst Zermelo's recursive encoding: 0 = {}; n+1 = {n}.
-- So @n@ is realized as a chain of n nested singletons. In particular,
-- @58@ is realized as {{...{}...}} with 58 levels of nesting; the set
-- has exactly one element (namely 57).

module Zermelo
  ( ZNat(..)
  , zEncode
  , zDecode
  , zSucc
  , zPred
  , inZ
  , subsetZ
  ) where

import HFSet
import Peano

-- | A natural number in Zermelo form, tagged for type-disambiguation.
newtype ZNat = ZNat { unZ :: HFSet }

instance Eq ZNat where
  ZNat a == ZNat b = a == b

instance Show ZNat where
  show (ZNat s) = "Z(" ++ show s ++ ")"

-- | Successor in Zermelo form: x |-> {x}.
zSucc :: HFSet -> HFSet
zSucc x = singleton x

-- | Encoding from Int.
zEncode :: Int -> ZNat
zEncode n
  | n <= 0    = ZNat emptySet
  | otherwise = ZNat (zSucc (unZ (zEncode (n - 1))))

-- | Decoding: count nesting depth. Returns 'Nothing' for malformed values
--   (i.e. for any 'HFSet' that is not a chain of nested singletons). All
--   values produced by 'zEncode' / 'zSucc' satisfy the chain invariant, so
--   for those this is always 'Just'.
zDecode :: ZNat -> Maybe Int
zDecode (ZNat s) = depth s
  where
    depth :: HFSet -> Maybe Int
    depth (HFSet [])  = Just 0
    depth (HFSet [x]) = fmap (1 +) (depth x)
    depth (HFSet _)   = Nothing

-- | Predecessor: extract the unique element of a Zermelo singleton.
zPred :: HFSet -> Maybe HFSet
zPred (HFSet [])  = Nothing
zPred (HFSet [x]) = Just x
zPred (HFSet _)   = Nothing  -- not a valid Zermelo numeral

-- | Peano instance for ZNat.
instance Peano ZNat where
  zeroP                    = ZNat emptySet
  sucP (ZNat s)            = ZNat (zSucc s)
  isZeroP (ZNat (HFSet xs)) = null xs
  predP (ZNat s)           = fmap ZNat (zPred s)

-- | Membership at the Z level.
inZ :: ZNat -> ZNat -> Bool
inZ (ZNat a) (ZNat b) = a `isElementOf` b

-- | Subset at the Z level.
subsetZ :: ZNat -> ZNat -> Bool
subsetZ (ZNat a) (ZNat b) = a `isSubsetOf` b
