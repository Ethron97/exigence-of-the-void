# Fill then from data

## CONSTRAINTS
#   AT center of room

## INPUT (not macro)
#   exigence:profile.chests

#=============================================================================================================

say Load chests

# Copy data to chest
data modify block ~-4 ~ ~4 Items set from storage exigence:profile chests.blue_left
data modify block ~-4 ~ ~3 Items set from storage exigence:profile chests.blue_right
data modify block ~-4 ~ ~4 CustomName set from storage exigence:profile chests.blue_name

data modify block ~-5 ~ ~2 Items set from storage exigence:profile chests.orange_left
data modify block ~-5 ~ ~1 Items set from storage exigence:profile chests.orange_right
data modify block ~-5 ~ ~2 CustomName set from storage exigence:profile chests.orange_name

data modify block ~-5 ~ ~-1 Items set from storage exigence:profile chests.deck_left
data modify block ~-5 ~ ~-2 Items set from storage exigence:profile chests.deck_right
data modify block ~-5 ~ ~-1 CustomName set from storage exigence:profile chests.deck_name

data modify block ~-4 ~ ~-3 Items set from storage exigence:profile chests.green_left
data modify block ~-4 ~ ~-4 Items set from storage exigence:profile chests.green_right
data modify block ~-4 ~ ~-3 CustomName set from storage exigence:profile chests.green_name
