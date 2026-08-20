# Remove lure entities for this bell

## CONSTRAINTS
#   AS BellNode

#====================================================================================================

execute at @s run kill @e[type=minecraft:snow_golem,tag=BellLure,distance=..2]
execute at @s run kill @e[type=minecraft:ravager,tag=BellLure,distance=..2]
