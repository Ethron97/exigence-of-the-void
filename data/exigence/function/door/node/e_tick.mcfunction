# Called from game tick / e_tick

## CONSTRAINTS
#   AS/AT level door node

#====================================================================================================

# Redistribute ravagers that get too close to door nodes
execute if entity @s[tag=Open] as @e[type=minecraft:ravager,distance=..2] run function exigence:enemy/ravager/redistribute
