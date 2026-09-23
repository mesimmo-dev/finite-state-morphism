classify :: Double -> String
classify x
  | x < -1.0 = "suppressed"
  | x < 1.0  = "stable"
  | x < 2.0  = "elevated"
  | otherwise = "critical"

main :: IO ()
main = do
  let observations = [-1.4, -0.6, 0.2, 0.9, 1.3, 2.2]
  let states = map classify observations

  putStrLn "FINITE STATE MORPHISM"
  putStrLn "---------------------"

  mapM_ print (zip observations states)
