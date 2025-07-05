# Creates void cache pots/items

## CONSTRAINTS
#   AS/AT EchoNode

#==========================================================================================================

tag @s add VoidCache

# Set blocks
fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:purpur_slab

# Fill pots
execute positioned ~1 ~ ~ run function exigence:cards/void_cache/private/fill_pot
execute positioned ~-1 ~ ~ run function exigence:cards/void_cache/private/fill_pot
execute positioned ~ ~ ~1 run function exigence:cards/void_cache/private/fill_pot
execute positioned ~ ~ ~-1 run function exigence:cards/void_cache/private/fill_pot

execute at @s run setblock ~ ~2 ~ light[level=7]
