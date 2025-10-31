# Called as player when steps on sculk

## CONSTRAINTS
#   AS player

#================================================================================

scoreboard players operation #compare ObjectLevel = @s game.player.active_level

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
execute at @s[scores={game.player.active_level=1}] as @e[type=minecraft:warden,scores={ObjectLevel=1},sort=nearest,limit=1] run scoreboard players operation @s game.warden.awareness += #temp Temp
execute at @s[scores={game.player.active_level=2}] as @e[type=minecraft:warden,scores={ObjectLevel=2},sort=nearest,limit=1] run scoreboard players operation @s game.warden.awareness += #temp Temp
execute at @s[scores={game.player.active_level=3}] as @e[type=minecraft:warden,scores={ObjectLevel=3},sort=nearest,limit=1] run scoreboard players operation @s game.warden.awareness += #temp Temp
execute at @s[scores={game.player.active_level=4}] as @e[type=minecraft:warden,scores={ObjectLevel=4},sort=nearest,limit=1] run scoreboard players operation @s game.warden.awareness += #temp Temp


# If sculk boots = -1, give speed and jump boost
execute if score @s game.player.mod.sculk_boots matches -1 run function exigence:player/effects/add_effect_time {effect:"jump",duration:100}
execute if score @s game.player.mod.sculk_boots matches -1 run function exigence:player/effects/speed/add_effect_time {level:2,duration:100}


# Playsound
execute at @s run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~-1 ~ 1 1
