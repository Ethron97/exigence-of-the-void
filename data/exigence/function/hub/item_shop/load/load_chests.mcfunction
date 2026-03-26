# Fill then from data

## CONSTRAINTS
#   AT center of room ( -27.5 200.0 0.5 )

## INPUT (not macro)
#   exigence:profile.chests

#====================================================================================================

say Load chests

# Make sure chests are placed
function exigence:hub/item_shop/load/place_chests

# Copy data to chest
data modify block ~2 ~ ~3 Items set from storage exigence:profile chests.blue_left
data modify block ~1 ~ ~3 Items set from storage exigence:profile chests.blue_right
data modify block ~2 ~ ~3 CustomName set from storage exigence:profile chests.blue_name

data modify block ~-1 ~ ~3 Items set from storage exigence:profile chests.orange_left
data modify block ~-2 ~ ~3 Items set from storage exigence:profile chests.orange_right
data modify block ~-1 ~ ~3 CustomName set from storage exigence:profile chests.orange_name

data modify block ~1 ~ ~-3 Items set from storage exigence:profile chests.deck_left
data modify block ~2 ~ ~-3 Items set from storage exigence:profile chests.deck_right
data modify block ~1 ~ ~-3 CustomName set from storage exigence:profile chests.deck_name

data modify block ~-2 ~ ~-3 Items set from storage exigence:profile chests.green_left
data modify block ~-1 ~ ~-3 Items set from storage exigence:profile chests.green_right
data modify block ~-2 ~ ~-3 CustomName set from storage exigence:profile chests.green_name

# Particles
particle minecraft:electric_spark ~2 ~0.2 ~3 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~1 ~0.2 ~3 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-1 ~0.2 ~3 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-2 ~0.2 ~3 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-2 ~0.2 ~-3 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-1 ~0.2 ~-3 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~1 ~0.2 ~-3 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~2 ~0.2 ~-3 0.5 0.5 0.5 0 5

# 