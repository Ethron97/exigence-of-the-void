# Called as player when steps on sculk

## CONSTRAINTS
#   AS player

#====================================================================================================

# Trigger menace
# 25% chance per SculkBoots modifier to not trigger menace
execute store result score #random Random run random value 1..8
execute if score @s game.player.mod.sculk_boots matches ..0 run function exigence:menace/proc/from_sculk
execute if score @s game.player.mod.sculk_boots matches 1 if score #random Random matches 1..6 run function exigence:menace/proc/from_sculk
execute if score @s game.player.mod.sculk_boots matches 2 if score #random Random matches 1..4 run function exigence:menace/proc/from_sculk
execute if score @s game.player.mod.sculk_boots matches 3 if score #random Random matches 1 run function exigence:menace/proc/from_sculk


# Increase nearest Warden awareness by 8 (that are on the same level)
scoreboard players set #temp Temp 8
execute if score @s game.player.mod.sculk_boots matches 1 run scoreboard players set #temp Temp 6
execute if score @s game.player.mod.sculk_boots matches 2 run scoreboard players set #temp Temp 4
execute if score @s game.player.mod.sculk_boots matches 3 run scoreboard players set #temp Temp 1
execute at @s[scores={game.player.active_level=1}] as @n[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:warden,scores={game.warden.active_level=1}] run scoreboard players operation @s game.warden.awareness += #temp Temp
execute at @s[scores={game.player.active_level=2}] as @n[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:warden,scores={game.warden.active_level=2}] run scoreboard players operation @s game.warden.awareness += #temp Temp
execute at @s[scores={game.player.active_level=3}] as @n[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:warden,scores={game.warden.active_level=3}] run scoreboard players operation @s game.warden.awareness += #temp Temp
execute at @s[scores={game.player.active_level=4}] as @n[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:warden,scores={game.warden.active_level=4}] run scoreboard players operation @s game.warden.awareness += #temp Temp


# If sculk boots = -1, give speed and jump boost
execute if score @s game.player.mod.sculk_boots matches -1 run function exigence:player/effects/add_effect_time {effect:"jump",duration:100}
execute if score @s game.player.mod.sculk_boots matches -1 run function exigence:player/effects/speed/add_effect_time {level:2,duration:100}


# Playsound
execute at @s run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~-1 ~ 1 1
