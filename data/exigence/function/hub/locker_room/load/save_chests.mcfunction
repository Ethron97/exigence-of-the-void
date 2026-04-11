# Save chests to storage

## CONSTRAINTS
#   AT center of room

## OUTPUT
#   exigence:profile.chests
#   SCORE #chests_saved Temp

#====================================================================================================

#say (D3) Save chests [locker room]

#   OUTPUT
execute store success score #chests_saved Temp if block ^3 ^ ^ minecraft:chest

# Save chest to storage
data modify storage exigence:profile chests.blue_left set from block ^3 ^ ^ Items
data modify storage exigence:profile chests.blue_right set from block ^3 ^ ^1 Items

data modify storage exigence:profile chests.orange_left set from block ^2 ^ ^2 Items
data modify storage exigence:profile chests.orange_right set from block ^1 ^ ^2 Items

data modify storage exigence:profile chests.deck_left set from block ^-1 ^ ^2 Items
data modify storage exigence:profile chests.deck_right set from block ^-2 ^ ^2 Items

data modify storage exigence:profile chests.green_left set from block ^-3 ^ ^1 Items
data modify storage exigence:profile chests.green_right set from block ^-3 ^ ^ Items

# Make sure chests are removed
function exigence:hub/locker_room/load/remove_chests