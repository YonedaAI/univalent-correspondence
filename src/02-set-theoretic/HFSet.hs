-- |
-- Module      : HFSet
-- Description : Hereditarily-finite sets, our model of a fragment of ZFC sufficient
--               for natural-number encodings.
-- Copyright   : (c) YonedaAI Research, 2026
--
-- This module defines a recursive datatype HFSet representing pure
-- hereditarily-finite sets, with structural (extensional) equality. It is the
-- common substrate for both the von Neumann and Zermelo encodings of the
-- natural numbers (see modules VonNeumann and Zermelo).

module HFSet
  ( HFSet(..)
  , emptySet
  , isElementOf
  , isSubsetOf
  , unionOf
  , singleton
  , adjoin
  , cardinality
  , showFlat
  , canonicalize
  ) where

import Data.List (sort)

-- | A hereditarily-finite set: a finite set whose elements are themselves
--   hereditarily-finite sets.
newtype HFSet = HFSet { elementsOf :: [HFSet] }

-- | A canonical form: an HFSet whose children are themselves canonical and
--   whose child list is sorted (under direct lexicographic comparison) and
--   deduplicated. We hide the wrapper so it cannot be confused with raw
--   HFSets and so that we can guarantee its invariants.
newtype Canon = Canon [Canon] deriving (Eq, Ord)

-- | Compute the canonical form of an HFSet. Children are recursively
--   canonicalized first (post-order), so that the subsequent sort operates
--   on already-canonical Canons whose Eq/Ord instances run in time linear
--   in the canonical-form size.
toCanon :: HFSet -> Canon
toCanon (HFSet xs) =
  let cs       = map toCanon xs
      sorted   = sort cs
      uniq     = dedup sorted
  in Canon uniq
  where
    dedup []        = []
    dedup [a]       = [a]
    dedup (a:b:rs)
      | a == b      = dedup (b:rs)
      | otherwise   = a : dedup (b:rs)

-- | Extensional equality: identical canonical forms.
instance Eq HFSet where
  a == b = toCanon a == toCanon b

-- | Lexicographic order on canonical forms (used only internally; not a
--   foundational notion but a convenient stable key).
instance Ord HFSet where
  compare a b = compare (toCanon a) (toCanon b)

-- | Show in raw braces-and-commas notation.
instance Show HFSet where
  show s = showFlat s

-- | Pretty-print an HFSet recursively as nested braces.
showFlat :: HFSet -> String
showFlat (HFSet []) = "{}"
showFlat (HFSet xs) =
  "{" ++ commaList (map showFlat xs) ++ "}"
  where
    commaList [] = ""
    commaList [x] = x
    commaList (x:rest) = x ++ "," ++ commaList rest

-- | The empty set.
emptySet :: HFSet
emptySet = HFSet []

-- | Membership: x \in y.
--   We canonicalize once on each side and compare Canon values directly,
--   avoiding repeated re-canonicalization that would otherwise make this
--   exponential in nesting depth.
isElementOf :: HFSet -> HFSet -> Bool
isElementOf x (HFSet ys) =
  let cx = toCanon x
      cs = map toCanon ys
  in any (== cx) cs

-- | Subset: every element of x is an element of y.
isSubsetOf :: HFSet -> HFSet -> Bool
isSubsetOf (HFSet xs) (HFSet ys) =
  let cxs = map toCanon xs
      cys = map toCanon ys
  in all (`elem` cys) cxs

-- | Binary union: x \cup y.
unionOf :: HFSet -> HFSet -> HFSet
unionOf (HFSet xs) (HFSet ys) = HFSet (xs ++ ys)

-- | Singleton set: {x}.
singleton :: HFSet -> HFSet
singleton x = HFSet [x]

-- | Adjoin a single element to a set: x |-> x \cup {a}.
adjoin :: HFSet -> HFSet -> HFSet
adjoin a (HFSet xs) = HFSet (a : xs)

-- | Cardinality: number of distinct elements (top-level only). We
--   canonicalize each child first to make deduplication fast.
cardinality :: HFSet -> Int
cardinality (HFSet xs) = length (uniqList (map toCanon xs))
  where
    uniqList = uniqAcc []
    uniqAcc acc []     = reverse acc
    uniqAcc acc (a:as)
      | a `elem` acc   = uniqAcc acc as
      | otherwise      = uniqAcc (a:acc) as

-- | Project a raw HFSet onto the unique extensional representative whose
--   children are recursively canonical, sorted, and deduplicated. Two
--   HFSets are extensionally equal iff their canonicalizations are
--   structurally identical, so any function that respects extensional
--   equality may safely canonicalize its input first. This lets clients
--   (e.g. the von Neumann and Zermelo encodings) recover the abstract
--   set, free of accidental duplication, before doing pattern-level work.
canonicalize :: HFSet -> HFSet
canonicalize = fromCanon . toCanon
  where
    fromCanon :: Canon -> HFSet
    fromCanon (Canon cs) = HFSet (map fromCanon cs)
