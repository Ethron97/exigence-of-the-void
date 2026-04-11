# Save chests to storage

## CONSTRAINTS
#   AT center of predungeon ( 0.5 209.0 104.5 )

## OUTPUT
#   exigence:profile.chests
#   SCORE #chests_saved Temp

#====================================================================================================

#say (D3) Save chests [predungeon]

#   OUTPUT
execute store success score #chests_saved Temp if block ~-4 ~ ~3 minecraft:chest

# Save chest to storage
data modify storage exigence:profile chests.blue_left set from block ~-4 ~ ~3 Items
data modify storage exigence:profile chests.blue_right set from block ~-5 ~ ~3 Items

data modify storage exigence:profile chests.orange_left set from block ~-6 ~ ~2 Items
data modify storage exigence:profile chests.orange_right set from block ~-6 ~ ~1 Items

data modify storage exigence:profile chests.deck_left set from block ~-6 ~ ~-1 Items
data modify storage exigence:profile chests.deck_right set from block ~-6 ~ ~-2 Items

data modify storage exigence:profile chests.green_left set from block ~-5 ~ ~-3 Items
data modify storage exigence:profile chests.green_right set from block ~-4 ~ ~-3 Items

# Make sure chests are removed
function exigence:hub/predungeon/load/remove_chests