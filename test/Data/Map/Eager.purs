module Test.Data.Map.Eager where

import Prelude
import Effect (Effect)
import Data.Map (Map, fromFoldable)
import Data.Tuple (Tuple(..))
import Data.Map.Eager (keys, values, reverseLookupAll, reverseLookup)
import Data.Maybe (Maybe(..))
import Test.Assert (assertEqual)

mapFixture :: Map String Int
mapFixture =
  fromFoldable
    [ Tuple "a" 1
    , Tuple "b" 2
    , Tuple "c" 3
    ]

main :: Effect Unit
main = do
  assertEqual
    { actual: keys mapFixture
    , expected: [ "a", "b", "c" ]
    }
  assertEqual
    { actual: values mapFixture
    , expected: [ 1, 2, 3 ]
    }
  assertEqual
    { actual: reverseLookupAll 3 mapFixture
    , expected: [ "c" ]
    }
  assertEqual
    { actual: reverseLookupAll 4 mapFixture
    , expected: []
    }
  assertEqual
    { actual: reverseLookup 3 mapFixture
    , expected: Just "c"
    }
  assertEqual
    { actual: reverseLookup 4 mapFixture
    , expected: Nothing
    }
