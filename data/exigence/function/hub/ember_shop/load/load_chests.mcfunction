# Fill then from data

## CONSTRAINTS
#   AT center of ember shop ( 45.5 209.0 0.5 )

## INPUT (not macro)
#   exigence:profile.chests

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 2.. run say (D2 Hub) Load chests [ember shop]

# Make sure chests are placed
function exigence:hub/ember_shop/load/place_chests

# Copy data to chest
data modify block ~-4 ~ ~-6 Items set from storage exigence:profile chests.blue_left
data modify block ~-3 ~ ~-6 Items set from storage exigence:profile chests.blue_right
data modify block ~-4 ~ ~-6 CustomName set from storage exigence:profile chests.blue_name

data modify block ~-2 ~ ~-7 Items set from storage exigence:profile chests.orange_left
data modify block ~-1 ~ ~-7 Items set from storage exigence:profile chests.orange_right
data modify block ~-2 ~ ~-7 CustomName set from storage exigence:profile chests.orange_name

data modify block ~1 ~ ~-7 Items set from storage exigence:profile chests.deck_left
data modify block ~2 ~ ~-7 Items set from storage exigence:profile chests.deck_right
data modify block ~1 ~ ~-7 CustomName set from storage exigence:profile chests.deck_name

data modify block ~3 ~ ~-6 Items set from storage exigence:profile chests.green_left
data modify block ~4 ~ ~-6 Items set from storage exigence:profile chests.green_right
data modify block ~3 ~ ~-6 CustomName set from storage exigence:profile chests.green_name

# Particles
particle minecraft:electric_spark ~-4 ~0.2 ~-6 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-3 ~0.2 ~-6 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-2 ~0.2 ~-7 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~-1 ~0.2 ~-7 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~1 ~0.2 ~-7 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~2 ~0.2 ~-7 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~3 ~0.2 ~-6 0.5 0.5 0.5 0 5
particle minecraft:electric_spark ~4 ~0.2 ~-6 0.5 0.5 0.5 0 5

# 