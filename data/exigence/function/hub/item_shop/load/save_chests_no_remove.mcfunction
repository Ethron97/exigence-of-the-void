# Save chests to storage

## CONSTRAINTS
#   AT center of room ( -27.5 200.0 0.5 )

## OUTPUT
#   exigence:profile.chests
#   SCORE #chests_saved Temp

#====================================================================================================

#say (D3) Save chests (no remove) [item shop]

#   OUTPUT
execute store success score #chests_saved Temp if block ~2 ~ ~3 minecraft:chest

# Save chest to storage
data modify storage exigence:profile chests.blue_left set from block ~2 ~ ~3 Items
data modify storage exigence:profile chests.blue_right set from block ~1 ~ ~3 Items

data modify storage exigence:profile chests.orange_left set from block ~-1 ~ ~3 Items
data modify storage exigence:profile chests.orange_right set from block ~-2 ~ ~3 Items

data modify storage exigence:profile chests.green_left set from block ~-2 ~ ~-3 Items
data modify storage exigence:profile chests.green_right set from block ~-1 ~ ~-3 Items

data modify storage exigence:profile chests.deck_left set from block ~1 ~ ~-3 Items
data modify storage exigence:profile chests.deck_right set from block ~2 ~ ~-3 Items