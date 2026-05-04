-- | Two non-equal but isomorphic finite models of T_succ.
--
-- The first carrier consists of finite von-Neumann-style nested sets:
--   0_vN = {}, 1_vN = {{}}, 2_vN = {{}, {{}}}, ...
-- The second carrier consists of Zermelo-style nested singletons:
--   0_Z = {}, 1_Z = {{}}, 2_Z = {{{}}}, ...
--
-- They are not equal as sets (e.g. {} in 1_vN but {} not in 2_Z), but
-- they are isomorphic as T_succ-models.  We carry around an explicit
-- isomorphism between them.
--
-- Because both carriers are taken to be size-4 prefixes, we close the
-- structure by interpreting succ as cyclic mod-4 on the orbit of zero.
-- This makes each model a genuine (finite) Set-model of T_succ:
-- carrier closed under succ, and zero an element of the carrier.
module Models
  ( VNNum
  , ZNum
  , modelVN
  , modelZ
  , isoVNtoZ
  , isoZtoVN
  ) where

import Model (Model(..))

------------------------------------------------------------------------------
-- Carrier type 1: von-Neumann-style finite sets.
--
-- We use a concrete inductive representation rather than a Set-of-Sets
-- because Haskell's 'Set' would not preserve the structural distinction
-- between, say, {{}, {{}}} and {{{}}}.
------------------------------------------------------------------------------

newtype VNNum = VN [VNNum]
  deriving (Eq)

instance Show VNNum where
  show (VN xs) = "{" ++ commaSep (map show xs) ++ "}"

vnZero :: VNNum
vnZero = VN []

vnSucc :: VNNum -> VNNum
vnSucc n@(VN xs) = VN (xs ++ [n])

-- | First few von Neumann numerals.
vnList :: Int -> [VNNum]
vnList n = take n (iterate vnSucc vnZero)

------------------------------------------------------------------------------
-- Carrier type 2: Zermelo-style singletons.
------------------------------------------------------------------------------

newtype ZNum = Z [ZNum]
  deriving (Eq)

instance Show ZNum where
  show (Z xs) = "{" ++ commaSep (map show xs) ++ "}"

zZero :: ZNum
zZero = Z []

zSucc :: ZNum -> ZNum
zSucc n = Z [n]

zList :: Int -> [ZNum]
zList n = take n (iterate zSucc zZero)

------------------------------------------------------------------------------
-- Models on carriers of size 4 (sufficient to exhibit non-equality).
--
-- We close the structure by using a cyclic successor: succ on the last
-- element of the carrier wraps back to zero.  This makes the carrier
-- closed under succ, so it is a bona fide finite T_succ-model in Set.
------------------------------------------------------------------------------

modelSize :: Int
modelSize = 4

vnCarrier :: [VNNum]
vnCarrier = vnList modelSize

zCarrier :: [ZNum]
zCarrier = zList modelSize

-- | Cyclic successor along an explicit carrier list.  Returns the next
--   element after @x@ in @xs@, wrapping to the first element when @x@ is
--   the last element.  Returns @x@ itself if @xs@ is empty or if @x@ is
--   not in @xs@ (neither happens for elements of the model carrier).
cyclicSucc :: Eq a => [a] -> a -> a
cyclicSucc []     x = x
cyclicSucc (h:hs) x = go h (h:hs)
  where
    go _ []       = x
    go first [y]
      | y == x    = first
      | otherwise = x
    go first (y:z:ys)
      | y == x    = z
      | otherwise = go first (z:ys)

modelVN :: Model VNNum
modelVN = Model
  { carrier = vnCarrier
  , zero    = vnZero
  , succM   = cyclicSucc vnCarrier
  }

modelZ :: Model ZNum
modelZ = Model
  { carrier = zCarrier
  , zero    = zZero
  , succM   = cyclicSucc zCarrier
  }

------------------------------------------------------------------------------
-- The isomorphism modelVN ~= modelZ.
--
-- We define it by sending the k-th element of one carrier list to the
-- k-th element of the other.  This is forced by initiality of the
-- natural-numbers object (truncated to size 4 with cyclic wrap-around)
-- and visibly preserves zero and succ.
------------------------------------------------------------------------------

-- | Total lookup: find the position of an element in a list.
--   Returns 0 (i.e. the index of zero) if the element is not present,
--   so the iso functions remain total even on values outside the orbit.
indexIn :: Eq a => [a] -> a -> Int
indexIn xs x = go 0 xs
  where
    go _ []     = 0
    go k (y:ys)
      | y == x  = k
      | otherwise = go (k + 1) ys

-- | The forward map of the isomorphism: send the k-th vN numeral to
--   the k-th Z numeral.
isoVNtoZ :: VNNum -> ZNum
isoVNtoZ n = zCarrier !! (indexIn vnCarrier n `mod` modelSize)

-- | The inverse map.
isoZtoVN :: ZNum -> VNNum
isoZtoVN n = vnCarrier !! (indexIn zCarrier n `mod` modelSize)

------------------------------------------------------------------------------
-- Internal helpers.
------------------------------------------------------------------------------

commaSep :: [String] -> String
commaSep []     = ""
commaSep [s]    = s
commaSep (s:ss) = s ++ "," ++ commaSep ss
