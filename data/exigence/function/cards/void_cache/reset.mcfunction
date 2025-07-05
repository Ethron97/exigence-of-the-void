# Reset a void cache node

## CONSTRAINTS
#   AS EchoNode (VoidCache)

#==========================================================================================================

execute at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 air

execute at @s run setblock ~ ~2 ~ air

tag @s remove VoidCache
