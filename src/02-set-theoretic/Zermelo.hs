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
--   (i.e. for any 'HFSet' that is not extensionally equal to a chain of
--   nested singletons). We canonicalize at each level so that, for example,
--   'HFSet [emptySet, emptySet]' (extensionally a singleton) is correctly
--   recognized as the Zermelo numeral 1.
zDecode :: ZNat -> Maybe Int
zDecode (ZNat s) = depth s
  where
    depth :: HFSet -> Maybe Int
    depth t = case elementsOf (canonicalize t) of
      []  -> Just 0
      [x] -> fmap (1 +) (depth x)
      _   -> Nothing

-- | Predecessor: extract the unique element of a Zermelo singleton, after
--   canonicalizing the input. Canonicalization is required so that 'zPred'
--   respects extensional equality: any HFSet extensionally equal to a
--   singleton is recognized as such, even if presented with duplicate
--   elements.
zPred :: HFSet -> Maybe HFSet
zPred s = case elementsOf (canonicalize s) of
  []  -> Nothing
  [x] -> Just x
  _   -> Nothing  -- not extensionally a Zermelo numeral

-- | Peano instance for ZNat. As with 'VNNat', 'isZeroP' uses the canonical
--   form so it tracks extensional equality rather than raw list shape.
instance Peano ZNat where
  zeroP                    = ZNat emptySet
  sucP (ZNat s)            = ZNat (zSucc s)
  isZeroP (ZNat s)         = null (elementsOf (canonicalize s))
  predP (ZNat s)           = fmap ZNat (zPred s)

-- | Membership at the Z level.
inZ :: ZNat -> ZNat -> Bool
inZ (ZNat a) (ZNat b) = a `isElementOf` b

-- | Subset at the Z level.
subsetZ :: ZNat -> ZNat -> Bool
subsetZ (ZNat a) (ZNat b) = a `isSubsetOf` b
