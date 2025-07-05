# Subfunction of tp_home

## CONSTRAINTS
#   AS interaction

## INPUT
#   INT player_id

#========================================================================================================

$execute at @e[type=minecraft:armor_stand,tag=PlayerNode,scores={PlayerID=$(player_id)}] run tp @s ~ ~ ~
