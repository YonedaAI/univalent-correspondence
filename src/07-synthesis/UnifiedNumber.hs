module UnifiedNumber
  ( PeanoLike(..)
  , vonNeumannCard
  , succIterate
  , predecessorsOf
  , finiteOrbitLength
  , unified58
  ) where

class PeanoLike n where
  zeroL :: n
  succL :: n -> n
  toIntL :: n -> Int

newtype Peano = Peano Int deriving (Show)

instance PeanoLike Peano where
  zeroL          = Peano 0
  succL (Peano k) = Peano (k + 1)
  toIntL (Peano k) = k

newtype VN = VN { unVN :: [VN] }
instance Show VN where show (VN xs) = "{" ++ concatMap show xs ++ "}"

vnEncode :: Int -> VN
vnEncode 0 = VN []
vnEncode n = let prev = vnEncode (n - 1) in VN (unVN prev ++ [prev])

vonNeumannCard :: Int -> Int
vonNeumannCard = length . unVN . vnEncode

succIterate :: PeanoLike n => Int -> n
succIterate k
  | k <= 0    = zeroL
  | otherwise = succL (succIterate (k - 1))

predecessorsOf :: Int -> Int
predecessorsOf n = length [m | m <- [0 .. n - 1], m <= n]

finiteOrbitLength :: Int -> Int -> Int
finiteOrbitLength size start = go (start `mod` size) 0
  where
    go x steps
      | steps > 0 && x == 0 = steps
      | steps > size        = size
      | otherwise           = go ((x + 1) `mod` size) (steps + 1)

unified58 :: [(String, Int)]
unified58 =
  [ ("naive",                        58)
  , ("set-theoretic (von Neumann)",  vonNeumannCard 58)
  , ("universal property (succ^58)", toIntL (succIterate 58 :: Peano))
  , ("Yoneda (|{m : Hom(m,58) /= 0}|)", predecessorsOf 58)
  , ("HoTT (|0 =_N 58 chain|)",      58)
  , ("structural (orbit length)",    finiteOrbitLength 59 1)
  ]
