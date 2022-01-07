{-# OPTIONS_GHC -fplugin=Evoke #-}
module Main where

import           Data.Aeson

data Person = Person
  { name :: String
  , age  :: Int
  }
  deriving ToJSON via "Evoke"

main :: IO ()
main = do
  putStrLn . show . encode $ Person "bob" 55
