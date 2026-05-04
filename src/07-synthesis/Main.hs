module Main where

import Synthesis (agreement)
import UnifiedNumber (unified58)

main :: IO ()
main = do
  putStrLn "The Univalent Correspondence -- six perspectives, one answer"
  putStrLn "============================================================="
  putStrLn ""
  putStrLn "Perspective-tagged answer for n = 58:"
  mapM_ (\(p, v) -> putStrLn ("  " ++ pad 22 (show p) ++ " -> " ++ show v))
        (agreement 58)
  putStrLn ""
  putStrLn "Unified computation across the six rows of the columns table:"
  mapM_ (\(label, v) -> putStrLn ("  " ++ pad 34 label ++ " = " ++ show v))
        unified58
  putStrLn ""
  let allEq = all ((== 58) . snd) unified58
  putStrLn ("All six perspectives agree on 58? " ++ show allEq)

pad :: Int -> String -> String
pad n s = s ++ replicate (max 0 (n - length s)) ' '
