# Teleport player to a random menace or echo node on their level

# DEBUG
say Toteming

# Reset tags
tag @e[type=minecraft:armor_stand,tag=CanTeleport] remove CanTeleport

# Teleport
#   Add all echo (other than chosen) and menace nodes to CanTeleport
#   On active level
scoreboard players operation #compare ObjectLevel = @s game.player.active_level
execute as @e[type=armor_stand,tag=MenaceNode] if score @s ObjectLevel = #compare ObjectLevel run tag @s add CanTeleport
execute as @e[type=armor_stand,tag=EchoNode,tag=!ChosenEchoNode] if score @s ObjectLevel = #compare ObjectLevel run tag @s add CanTeleport

#   As each CanTeleport, remove tag if there is a bad guy nearby
execute as @e[type=minecraft:armor_stand,tag=CanTeleport] at @s if entity @e[distance=..15,type=#exigence:enemy] run tag @s remove CanTeleport

# Remove the nearest 5 options
execute at @s run tag @e[type=minecraft:armor_stand,tag=CanTeleport,sort=nearest,limit=5] remove CanTeleport

# If no can teleport, ???
execute unless entity @e[type=minecraft:armor_stand,tag=CanTeleport] run tellraw @s {text:"No valid teleport locations found",color:"red"}

# Teleport to a random CanTeleport
tp @s @e[type=minecraft:armor_stand,tag=CanTeleport,sort=random,limit=1]

# Playsound
execute at @s run playsound minecraft:item.trident.thunder ambient @a ~ ~1000 ~ 1000 1

