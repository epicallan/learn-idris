module Part1.Sec1
        ( getStringOrInt
        , valToString
        ) where

import Data.Kind (Type)

type family StringOrInt (a :: Bool) :: Type where
    StringOrInt 'True = Int
    StringOrInt 'False = Text

data SBool (b :: Bool) where
  STrue :: SBool 'True
  SFalse :: SBool 'False

getStringOrInt :: forall (a :: Bool). SBool a -> StringOrInt a
getStringOrInt = \case
  STrue -> 94
  SFalse -> "Ninety Four"

valToString :: forall (a :: Bool). SBool a -> StringOrInt a -> Text
valToString x val = case x of
  STrue -> show val
  SFalse -> val
