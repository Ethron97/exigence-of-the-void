# Subfunction of tp_home

## CONSTRAINTS
#   AS interaction

## INPUT
#   INT profile_id

#========================================================================================================

$execute at @e[type=minecraft:armor_stand,tag=ProfileNode,scores={profile.node.profile_id=$(profile_id)}] run tp @s ~ ~ ~
