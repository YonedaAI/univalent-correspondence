-- |
-- Module      : VonNeumann
-- Description : Von Neumann ordinal encoding of the natural numbers.
-- Copyright   : (c) YonedaAI Research, 2026
--
-- John von Neumann's recursive encoding: 0 = {}; n+1 = n \cup {n}.
-- So @n@ is realized as the set {0, 1, ..., n-1}; in particular,
-- @58@ is realized as {0,1,...,57}, a set of cardinality 58.

module VonNeumann
  ( VNNat(..)
  , vnEncode
  , vnDecode
  , vnSucc
  , vnPred
  , inVN
  , subsetVN
  ) where

import HFSet
import Peano

-- | A natural number in von Neumann form, tagged for type-disambiguation.
newtype VNNat = VNNat { unVN :: HFSet }

instance Eq VNNat where
  VNNat a == VNNat b = a == b

instance Show VNNat where
  show (VNNat s) = "VN(" ++ show s ++ ")"

-- | Successor in von Neumann form: x |-> x \cup {x}.
--   We adjoin x to the FRONT of the underlying list, so that vnPred can
--   simply pop the front in O(1) without comparing nested HFSets for
--   membership (which is exponential under structural equality).
vnSucc :: HFSet -> HFSet
vnSucc x = HFSet (x : elementsOf x)

-- | Encoding from Int.
vnEncode :: Int -> VNNat
vnEncode n
  | n <= 0    = VNNat emptySet
  | otherwise = VNNat (vnSucc (unVN (vnEncode (n - 1))))

-- | Decoding: count cardinality. Works because, in von Neumann,
--   the cardinality of n equals n.
vnDecode :: VNNat -> Int
vnDecode (VNNat s) = cardinality s

-- | Predecessor: removes the largest element from the canonical
--   representative. We first project onto the extensional canonical form
--   (deduplicated and sorted in ascending order) so that 'vnPred' is
--   invariant under extensional equality; this is essential for the Peano
--   laws, since '==' on 'VNNat' is itself extensional. For values produced
--   by 'vnEncode' / 'vnSucc', the canonical form is exactly the von Neumann
--   ordinal {0, 1, ..., n-1}, and removing the maximum element n-1 yields
--   {0, 1, ..., n-2}, which is the correct predecessor.
vnPred :: HFSet -> Maybe HFSet
vnPred s = case elementsOf (canonicalize s) of
  [] -> Nothing
  xs -> Just (HFSet (init xs))

-- | Peano instance for VNNat: works directly via vnSucc / vnPred.
--   'isZeroP' canonicalizes first so that any HFSet extensionally equal
--   to the empty set is recognized as zero, even if presented with
--   redundant duplicate elements at the raw-list level.
instance Peano VNNat where
  zeroP                    = VNNat emptySet
  sucP (VNNat s)           = VNNat (vnSucc s)
  isZeroP (VNNat s)        = null (elementsOf (canonicalize s))
  predP (VNNat s)          = fmap VNNat (vnPred s)

-- | Membership at the VN level.
inVN :: VNNat -> VNNat -> Bool
inVN (VNNat a) (VNNat b) = a `isElementOf` b

-- | Subset at the VN level.
subsetVN :: VNNat -> VNNat -> Bool
subsetVN (VNNat a) (VNNat b) = a `isSubsetOf` b
