# Creates void cache pots/items

## CONSTRAINTS
#   AS/AT EchoNode

#====================================================================================================

tag @s add VoidCache
tag @s add ETICK

# Set blocks
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:purpur_slab

# Fill pots
execute positioned ~1 ~ ~ run function exigence:cards/void_cache/private/fill_pot
execute positioned ~-1 ~ ~ run function exigence:cards/void_cache/private/fill_pot
execute positioned ~ ~ ~1 run function exigence:cards/void_cache/private/fill_pot
execute positioned ~ ~ ~-1 run function exigence:cards/void_cache/private/fill_pot

setblock ~ ~2 ~ light[level=7]

# Spawn waypoint
function exigence:ember/node/void_cache/summon_waypoint