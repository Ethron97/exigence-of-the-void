# Called when Ascend is triggered in multiplayer, if there are dead players

## CONSTRAINTS
#   AS player

#====================================================================================================== 

say I am reviving

# Reset dead score
scoreboard players set @s dead 0

# Decrement death check counter
scoreboard players remove game.dead_players game.state 1

# Teleport to revive station that matches new active level
execute if score game.active_level game.state matches 2 at @e[type=minecraft:armor_stand,scores={node.property.object_level=2},tag=RespawnNode] run tp @s ~ ~5 ~ ~ ~
execute if score game.active_level game.state matches 3 at @e[type=minecraft:armor_stand,scores={node.property.object_level=3},tag=RespawnNode] run tp @s ~ ~5 ~ ~ ~
execute if score game.active_level game.state matches 4 at @e[type=minecraft:armor_stand,scores={node.property.object_level=4},tag=RespawnNode] run tp @s ~ ~5 ~ ~ ~

# Particles
execute if score game.active_level game.state matches 2 at @e[type=minecraft:armor_stand,scores={node.property.object_level=2},tag=RespawnNode] run function exigence:player/death/private/revive_particles
execute if score game.active_level game.state matches 3 at @e[type=minecraft:armor_stand,scores={node.property.object_level=3},tag=RespawnNode] run function exigence:player/death/private/revive_particles
execute if score game.active_level game.state matches 4 at @e[type=minecraft:armor_stand,scores={node.property.object_level=4},tag=RespawnNode] run function exigence:player/death/private/revive_particles

# Give slowfall 5 seconds
effect give @s slow_falling 5 0 true

# Gamemode adventure
gamemode adventure @s

# Playsound
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn ambient @a ~ ~ ~ 3 1

execute if entity @s[scores={game.player.mod.water_crystal=1}] run effect give @s dolphins_grace infinite 0 true

# Glow
effect give @s minecraft:glowing infinite 0 true

# Title
title @s subtitle {text:"Reviving",color:"green"}
title @s title ""
