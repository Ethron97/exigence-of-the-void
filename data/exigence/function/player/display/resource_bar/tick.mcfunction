# Called by player tick if max mance is 0
#   Calls sub-function based on player setting
#   UNLESS player is by an exit

## CONSTRAINTS
#   AS player

#==============================================================================================================

# Full / standard (default)
execute at @s unless score @s s_resourceActionbar matches 1.. unless entity @e[distance=..2,type=minecraft:armor_stand,tag=ExitNode] run function exigence:player/display/resource_bar/full/update

# "Efficient"
execute at @s if score @s s_resourceActionbar matches 1 unless entity @e[distance=..2,type=minecraft:armor_stand,tag=ExitNode] run function exigence:player/display/resource_bar/efficient/update

# Numeric / simple (least laggy)
execute at @s if score @s s_resourceActionbar matches 2 unless entity @e[distance=..2,type=minecraft:armor_stand,tag=ExitNode] run function exigence:player/display/resource_bar/numeric/update
