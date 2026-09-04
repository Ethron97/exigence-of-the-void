# Teleport to revive location
#   Called by ../revive

## CONSTRAINTS
#   AS player

#====================================================================================================

# If exalting, nearest player to the level 4 beacon
tag @s add NotMe
execute if score game.exalting game.state matches 1 at @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,tag=BeaconNode,tag=ETICK] at @p[tag=ActivePlayer,tag=!NotMe] run tp @s ~ ~0.5 ~ ~ ~
tag @s remove NotMe
execute if score game.exalting game.state matches 1 run return 1
#----------------------------------------------------------------------------------------------------
# Else, normal revive:

# Teleport to revive station that matches new active level
execute if score game.active_level game.state matches 2 at @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:armor_stand,scores={node.property.object_level=2},tag=RespawnNode] run function exigence:player/death/private/tp_to_revive_location
execute if score game.active_level game.state matches 3 at @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:armor_stand,scores={node.property.object_level=3},tag=RespawnNode] run function exigence:player/death/private/tp_to_revive_location
execute if score game.active_level game.state matches 4 at @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:armor_stand,scores={node.property.object_level=4},tag=RespawnNode] run function exigence:player/death/private/tp_to_revive_location
