# Check for nearby itmes

## CONSTRAINTS
#   AS player

#====================================================================================================

execute at @s as @e[type=item,distance=..5,tag=!SoulWarned] run function exigence:player/dropped_soulbound
