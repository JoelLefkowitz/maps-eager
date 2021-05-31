module Test.Main where

import Prelude
import Effect (Effect)
import Data.Map (Map, fromFoldable)
import Data.Tuple (Tuple(..))
import Data.Map.Eager (keys, values, reverseLookupAll, reverseLookup)
import Data.Maybe (Maybe(..))
import Test.Assert (assertEqual)

main :: Effect Unit
main = do
  testKeys
  testValues
  testReverseLookupAll
  testReverseLookup

mapFixture :: Map String Int
mapFixture =
  fromFoldable
    [ Tuple "a" 1
    , Tuple "b" 2
    , Tuple "c" 3
    ]

testKeys :: Effect Unit
testKeys =
  assertEqual
    { actual: keys mapFixture
    , expected: [ "a", "b", "c" ]
    }

testValues :: Effect Unit
testValues =
  assertEqual
    { actual: values mapFixture
    , expected: [ 1, 2, 3 ]
    }

testReverseLookupAll :: Effect Unit
testReverseLookupAll = do
  assertEqual
    { actual: reverseLookupAll 3 mapFixture
    , expected: [ "c" ]
    }
  assertEqual
    { actual: reverseLookupAll 4 mapFixture
    , expected: []
    }

testReverseLookup :: Effect Unit
testReverseLookup = do
  assertEqual
    { actual: reverseLookup 3 mapFixture
    , expected: Just "c"
    }
  assertEqual
    { actual: reverseLookup 4 mapFixture
    , expected: Nothing
    }
