# Level key tick

## CONSTRAINTS
#   AS/AT level key (item)

#====================================================================================================

execute if score seconds.cooldown tick_counter matches 5 if entity @a[scores={dead=0},tag=ActivePlayer,distance=..64] run particle minecraft:soul ~ ~0.8 ~ 0.4 1.0 0.4 0 2
execute if score seconds.cooldown tick_counter matches 15 if entity @a[scores={dead=0},tag=ActivePlayer,distance=..64] run particle minecraft:soul ~ ~0.8 ~ 0.4 1.0 0.4 0 2

execute if score @s game.waypoint.revealed_ticks matches 1.. run scoreboard players remove @s game.waypoint.revealed_ticks 1