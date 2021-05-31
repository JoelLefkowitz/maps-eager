module Data.Map.Eager where

import Prelude
import Data.Array (head)
import Data.List as List
import Data.Map as Map
import Data.Map.Internal as MapInternal
import Data.Maybe (Maybe)

keys :: forall k v. Map.Map k v -> Array k
keys map = List.toUnfoldable $ MapInternal.keys map

values :: forall k v. Map.Map k v -> Array v
values map = List.toUnfoldable $ Map.values map

reverseLookupAll :: forall k v. Eq v => Ord k => v -> Map.Map k v -> Array k
reverseLookupAll x = keys <<< Map.filter (\v -> v == x)

reverseLookup :: forall k v. Eq v => Ord k => v -> Map.Map k v -> Maybe k
reverseLookup x = head <<< reverseLookupAll x
