# Teleport player to a random menace or echo node on their level

## CONSTRAINTS
#   AS player

#====================================================================================================

# DEBUG
say Toteming

# Playsound (pre-teleport)
execute at @s run playsound minecraft:item.trident.thunder ambient @a ~ ~ ~ 3 1

# Teleport
#   Add all echo (other than chosen) and menace nodes to CanTotemTeleport
#   On active level
scoreboard players operation #compare game.player.active_level = @s game.player.active_level
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=MenaceNode] if score @s node.property.object_level = #compare game.player.active_level run tag @s add CanTotemTeleport
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=EchoNode,tag=!ChosenEchoNode] if score @s node.property.object_level = #compare game.player.active_level run tag @s add CanTotemTeleport

#   As each CanTotemTeleport, remove tag if there is a bad guy nearby
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=CanTotemTeleport] at @s if entity @e[type=#exigence:enemy,distance=..15] run tag @s remove CanTotemTeleport

# Remove the nearest 5 options
execute at @s run tag @e[type=minecraft:marker,tag=CanTotemTeleport,distance=..128,sort=nearest,limit=5] remove CanTotemTeleport

# If no can teleport, ???
execute unless entity @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=CanTotemTeleport] run tellraw @s {text:"No valid teleport locations found",color:"red"}

# Teleport to a random CanTotemTeleport
tp @s @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=CanTotemTeleport,sort=random,limit=1]

# Playsound (post-teleport)
execute at @s run playsound minecraft:item.trident.thunder ambient @a ~ ~ ~ 3 1

# Reset tags
tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=CanTotemTeleport] remove CanTotemTeleport