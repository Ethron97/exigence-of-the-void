# Save chests to storage

## CONSTRAINTS
#   AT center of room

## OUTPUT
#   exigence:profile.chests

#=============================================================================================================

say Save chests

# Save chest to storage
data modify storage exigence:profile chests.blue_left set from block ~-4 ~ ~4 Items
data modify storage exigence:profile chests.blue_right set from block ~-4 ~ ~3 Items

data modify storage exigence:profile chests.orange_left set from block ~-5 ~ ~2 Items
data modify storage exigence:profile chests.orange_right set from block ~-5 ~ ~1 Items

data modify storage exigence:profile chests.deck_left set from block ~-5 ~ ~-1 Items
data modify storage exigence:profile chests.deck_right set from block ~-5 ~ ~-2 Items

data modify storage exigence:profile chests.green_left set from block ~-4 ~ ~-3 Items
data modify storage exigence:profile chests.green_right set from block ~-4 ~ ~-4 Items
