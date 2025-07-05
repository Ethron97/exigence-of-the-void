# Called when Ascend is triggered in multiplayer, if there are dead players

## CONSTRAINTS
#   AS player

#====================================================================================================== 

say I am reviving

# Teleport to revive station that matches new active level
execute if score ActiveLevel DungeonRun matches 2 at @e[type=minecraft:armor_stand,tag=RespawnNode,scores={ObjectLevel=2}] run tp @s ~ ~5 ~ ~ ~
execute if score ActiveLevel DungeonRun matches 3 at @e[type=minecraft:armor_stand,tag=RespawnNode,scores={ObjectLevel=3}] run tp @s ~ ~5 ~ ~ ~
execute if score ActiveLevel DungeonRun matches 4 at @e[type=minecraft:armor_stand,tag=RespawnNode,scores={ObjectLevel=4}] run tp @s ~ ~5 ~ ~ ~

# Particles
execute if score ActiveLevel DungeonRun matches 2 at @e[type=minecraft:armor_stand,tag=RespawnNode,scores={ObjectLevel=2}] run function exigence:player/death/private/revive_particles
execute if score ActiveLevel DungeonRun matches 3 at @e[type=minecraft:armor_stand,tag=RespawnNode,scores={ObjectLevel=3}] run function exigence:player/death/private/revive_particles
execute if score ActiveLevel DungeonRun matches 4 at @e[type=minecraft:armor_stand,tag=RespawnNode,scores={ObjectLevel=4}] run function exigence:player/death/private/revive_particles

# Give slowfall 5 seconds
effect give @s slow_falling 5 0 true

# Gamemode adventure
gamemode adventure @s

# Reset dead score
scoreboard players set @s dead 0

# Playsound
execute at @s run playsound minecraft:block.respawn_anchor.set_spawn ambient @a ~ ~ ~ 3 1

# Animate
# Summon two allays, or however many
#execute at @s run summon minecraft:allay ~1 ~2 ~ {NoAI:1,Tags:["ReviveAllay1","ReviveAllay"]}
#execute at @s run summon minecraft:allay ~-1 ~2 ~ {NoAI:1,Tags:["ReviveAllay2","ReviveAllay"]}
#scoreboard players set @s Respawning 100
#function exigence:player/death/private/animate

execute if entity @s[scores={mod_WaterCrystal=1}] run effect give @s dolphins_grace infinite 0 true

# Glow
effect give @s minecraft:glowing infinite 0 true

# Title
title @s subtitle {text:"Reviving",color:"green"}
title @s title ""
