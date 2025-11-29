# Move chest block data to temporary storage for copying chest contents

## CONSTRAINTS
#   AT profile node

## OUTPUT
#   exigence:profile.chests

#=============================================================================================================

say Chest to data

tag @n[distance=..0.1,tag=ProfileNode] add ChestsLoaded

data modify storage exigence:profile chests.blue_left set from block ~4 ~ ~ Items
data modify storage exigence:profile chests.blue_right set from block ~5 ~ ~ Items
data modify storage exigence:profile chests.blue_name set from block ~4 ~ ~ CustomName

data modify storage exigence:profile chests.orange_left set from block ~4 ~1 ~ Items
data modify storage exigence:profile chests.orange_right set from block ~5 ~1 ~ Items
data modify storage exigence:profile chests.orange_name set from block ~4 ~1 ~ CustomName

data modify storage exigence:profile chests.green_left set from block ~4 ~2 ~ Items
data modify storage exigence:profile chests.green_right set from block ~5 ~2 ~ Items
data modify storage exigence:profile chests.green_name set from block ~4 ~2 ~ CustomName

data modify storage exigence:profile chests.deck_left set from block ~1 ~1 ~ Items
data modify storage exigence:profile chests.deck_right set from block ~2 ~1 ~ Items
data modify storage exigence:profile chests.deck_name set from block ~1 ~1 ~ CustomName
