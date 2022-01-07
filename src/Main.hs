{-# OPTIONS_GHC -fplugin=Evoke #-}
module Main where

data Person = Person
  { name :: String
  , age  :: Int
  }
  deriving ToJSON via "Evoke"

main :: IO ()
main = do
  putStrLn "hello world"
