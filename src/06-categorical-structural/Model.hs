-- | Model: a finite-product-preserving functor T_succ -> Set, presented
--   concretely as a record (carrier set, zero element, successor function).
--
-- A morphism of models is a function on carriers that commutes with zero
-- and successor.  This is exactly a natural transformation between the
-- corresponding functors, by Proposition 4.4 of the paper.
module Model
  ( Model(..)
  , isHomomorphism
  , isIsomorphism
  , isClosed
  , applyN
  ) where

-- | A finite model of T_succ in Set on carrier type @a@.
--
-- Invariant: every element of @carrier@ is reachable from @zero@ by some
-- finite number of @succ@-applications, and @carrier@ is closed under
-- @succ@ applied to any of its elements.
data Model a = Model
  { carrier :: [a]        -- enumeration of the carrier set
  , zero    :: a          -- interpretation of the constant
  , succM   :: a -> a     -- interpretation of the unary operation
  }

-- | Iterate a function n times.
applyN :: Int -> (a -> a) -> a -> a
applyN n f x
  | n <= 0    = x
  | otherwise = applyN (n - 1) f (f x)

-- | Check whether a function on carriers is a T_succ-homomorphism.
--   Three conditions:
--     1. f sends zero to zero;
--     2. f intertwines the two successor functions;
--     3. f lands in the target carrier on every source-carrier element.
isHomomorphism
  :: (Eq b)
  => Model a            -- ^ source
  -> Model b            -- ^ target
  -> (a -> b)           -- ^ candidate map
  -> Bool
isHomomorphism m m' f =
  f (zero m) == zero m'
  && all (\x -> f (succM m x) == succM m' (f x)) (carrier m)
  && all (\x -> f x `elem` carrier m') (carrier m)

-- | Check that a model is closed under its own succ operation: every
--   succ-image of a carrier element is still in the carrier.  This is a
--   sanity check on the model, independent of any homomorphism.
isClosed :: Eq a => Model a -> Bool
isClosed m = all (\x -> succM m x `elem` carrier m) (carrier m)

-- | A pair of maps (f, g) is an isomorphism of T_succ-models if both are
--   homomorphisms and they are mutually inverse on the enumerated carriers.
isIsomorphism
  :: (Eq a, Eq b)
  => Model a
  -> Model b
  -> (a -> b)
  -> (b -> a)
  -> Bool
isIsomorphism m m' f g =
  homAB && homBA && invFG && invGF
  where
    homAB = isHomomorphism m m' f
    homBA = isHomomorphism m' m g
    invFG = all (\x -> g (f x) == x) (carrier m)
    invGF = all (\y -> f (g y) == y) (carrier m')
