# Called when the game ends
# Unload echo node

## CONSTRAINTS
#   AS/AT echo node

#====================================================================================================

fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:cake

setblock ~ ~1 ~ air

execute if entity @s[tag=VoidCache] run function exigence:cards/void_cache/reset