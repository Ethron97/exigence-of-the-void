# Fill then from data

## CONSTRAINTS
#   AT center of predungeon ( 0.5 209.0 104.5 )

## INPUT (not macro)
#   exigence:profile.chests

#====================================================================================================

#say (D3) Load chests [predungeon]

# Make sure chests are placed
function exigence:hub/predungeon/load/place_chests

# Copy data to chest
data modify block ~-4 ~ ~3 Items set from storage exigence:profile chests.blue_left
data modify block ~-5 ~ ~3 Items set from storage exigence:profile chests.blue_right
data modify block ~-4 ~ ~3 CustomName set from storage exigence:profile chests.blue_name

data modify block ~-6 ~ ~2 Items set from storage exigence:profile chests.orange_left
data modify block ~-6 ~ ~1 Items set from storage exigence:profile chests.orange_right
data modify block ~-6 ~ ~2 CustomName set from storage exigence:profile chests.orange_name

data modify block ~-6 ~ ~-1 Items set from storage exigence:profile chests.deck_left
data modify block ~-6 ~ ~-2 Items set from storage exigence:profile chests.deck_right
data modify block ~-6 ~ ~-1 CustomName set from storage exigence:profile chests.deck_name

data modify block ~-5 ~ ~-3 Items set from storage exigence:profile chests.green_left
data modify block ~-4 ~ ~-3 Items set from storage exigence:profile chests.green_right
data modify block ~-5 ~ ~-3 CustomName set from storage exigence:profile chests.green_name

# Particles
particle minecraft:electric_spark ~-4 ~0.2 ~3 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-5 ~0.2 ~3 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-6 ~0.2 ~2 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-6 ~0.2 ~1 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-6 ~0.2 ~-1 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-6 ~0.2 ~-2 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-5 ~0.2 ~-3 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-4 ~0.2 ~-3 0.5 0.5 0.5 0 5

# 