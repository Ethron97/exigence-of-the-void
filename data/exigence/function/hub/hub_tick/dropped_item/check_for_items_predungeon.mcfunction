# Check for nearby itmes

## CONSTRAINTS
#   AS player

#====================================================================================================

execute at @s as @e[type=item,tag=!SoulWarned,distance=..5] run function exigence:player/dropped_soulbound
