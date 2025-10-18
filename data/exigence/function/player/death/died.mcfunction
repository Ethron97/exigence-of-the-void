# Call from detect_game_state when a player is found with dead=1 (just died)

## CONSTRAINTS
#   AS player

#======================================================================================================

# DEBUG
#tellraw @a [{"score": {"name": "@s","objective": "ActiveLevel"}}]

# Setup
data merge storage exigence:give {pos:{list:[0d,0d,0d],int_array:[I;0,0,0]}}

# Copy last death location to array and summon death marker there
data modify storage exigence:give pos.int_array set from entity @s LastDeathLocation.pos
execute store result storage exigence:give pos.list[0] double 1 run data get storage exigence:give pos.int_array[0]
execute store result storage exigence:give pos.list[1] double 1 run data get storage exigence:give pos.int_array[1]
execute store result storage exigence:give pos.list[2] double 1 run data get storage exigence:give pos.int_array[2]

execute if data entity @s LastDeathLocation{dimension:"minecraft:overworld"} in minecraft:overworld run summon minecraft:marker -301.51 37.00 -133.41 {Tags:["DeathMarker"]}

execute as @e[type=minecraft:marker,tag=DeathMarker] run data modify entity @s Pos set from storage exigence:give pos.list

#execute as @e[type=minecraft:marker,tag=DeathMarker] run say I am death

# Sanity
execute unless entity @e[type=minecraft:armor_stand,tag=intermediary] run summon minecraft:armor_stand -382.47 37.00 -115.34 {Tags:[intermediary],ShowArms:1b}

# Before clear, check if character has echo (or shards)
execute store result score temp Temp run clear @s #exigence:echo 0
scoreboard players operation @s cr_echosLost += temp Temp
scoreboard players operation @s t_echosLost += temp Temp

# Drop items
execute at @e[type=minecraft:marker,tag=DeathMarker] positioned ~ ~1.1 ~ run function exigence:player/death/drop_items

# Gamemode spectator if there is another player alive
execute if entity @a[tag=ActivePlayer,scores={dead=0}] run gamemode spectator @s
execute if entity @a[tag=ActivePlayer,scores={dead=0}] run schedule function exigence:player/game/refresh_spectate 5t

# "You Died"
title @s subtitle {text:"You died",color:"red"}
title @s title ""

# Increase score to dead=2 so this doesn't recall
scoreboard players set @s dead 2

# Remove death marker
kill @e[type=minecraft:marker,tag=DeathMarker]

# Ensure is on player team
team join Player @s

# Reset effects (effect_)
function exigence:player/effects/reset_active_effects

scoreboard players set @s mod_Heighten 0

scoreboard players set @s cr_damageTakenSinceLastDeath 0

# Increase locational deaths; t_deaths_LX
execute if score @s ActiveLevel matches 1 run scoreboard players add @s t_deaths_L1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s t_deaths_L2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s t_deaths_L3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s t_deaths_L4 1
execute if score @s ActiveLevel matches 5 run scoreboard players add @s t_deaths_L5 1

# Increase difficulty deaths; t_deaths_DX
execute if score Difficulty DungeonRun matches 1 run scoreboard players add @s t_deaths_D1 1
execute if score Difficulty DungeonRun matches 2 run scoreboard players add @s t_deaths_D2 1
execute if score Difficulty DungeonRun matches 3 run scoreboard players add @s t_deaths_D3 1
execute if score Difficulty DungeonRun matches 4 run scoreboard players add @s t_deaths_D4 1
execute if score Difficulty DungeonRun matches 5 run scoreboard players add @s t_deaths_D5 1
execute if score Difficulty DungeonRun matches 6 run scoreboard players add @s t_deaths_D6 1

# Increase locational deaths; cr_deaths_LX
execute if score @s ActiveLevel matches 1 run scoreboard players add @s cr_deaths_L1 1
execute if score @s ActiveLevel matches 2 run scoreboard players add @s cr_deaths_L2 1
execute if score @s ActiveLevel matches 3 run scoreboard players add @s cr_deaths_L3 1
execute if score @s ActiveLevel matches 4 run scoreboard players add @s cr_deaths_L4 1
execute if score @s ActiveLevel matches 5 run scoreboard players add @s cr_deaths_L5 1

# Increase difficulty deaths; cr_deaths_DX
execute if score Difficulty DungeonRun matches 1 run scoreboard players add @s cr_deaths_D1 1
execute if score Difficulty DungeonRun matches 2 run scoreboard players add @s cr_deaths_D2 1
execute if score Difficulty DungeonRun matches 3 run scoreboard players add @s cr_deaths_D3 1
execute if score Difficulty DungeonRun matches 4 run scoreboard players add @s cr_deaths_D4 1
execute if score Difficulty DungeonRun matches 5 run scoreboard players add @s cr_deaths_D5 1
execute if score Difficulty DungeonRun matches 6 run scoreboard players add @s cr_deaths_D6 1

# Update killed_by scores
function exigence:player/death/private/update_scores
scoreboard players add @s cr_deaths 1
scoreboard players add @s t_deaths 1

# If died at max menace, add to score
execute if data storage exigence:dungeon {max_menace:1} run scoreboard players add @s t_maxMenaceDeaths 1

# If player dies while carrying NPC (and game is coop), remove NPC and carrying tag and send message
execute if entity @s[tag=Carrying] run function exigence:player/uncarry
tag @s remove Carrying

# Title to alert teammates
title @a[tag=ActivePlayer,scores={dead=0}] subtitle [{"selector":"@s"},{text:" died",color:"red"}]
title @a[tag=ActivePlayer,scores={dead=0}] title ""
