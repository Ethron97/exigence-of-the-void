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
scoreboard players set #add game.warden.awareness 8
execute if score @s game.player.mod.sculk_boots matches 1 run scoreboard players set #add game.warden.awareness 6
execute if score @s game.player.mod.sculk_boots matches 2 run scoreboard players set #add game.warden.awareness 4
execute if score @s game.player.mod.sculk_boots matches 3 run scoreboard players set #add game.warden.awareness 1
#   INPUT: #add game.warden.awareness
execute at @s run function exigence:player/modifiers/private/add_awareness_from_sculk_step


# If sculk boots = -1, give speed and jump boost
execute if score @s game.player.mod.sculk_boots matches -1 run function exigence:player/effects/add_effect_time {effect:"jump",duration:100}
execute if score @s game.player.mod.sculk_boots matches -1 run function exigence:player/effects/speed/add_effect_time {level:2,duration:100}


# If max menace, wither I for 1 second (doesn't do damage, but shows effect so they are more aware)
execute if score game.max_menace game.state matches 1 run effect give @s minecraft:wither 1 0
execute if score game.max_menace game.state matches 1 run damage @s 1.0 wither

# Playsound
execute at @s run playsound minecraft:block.sculk_sensor.clicking hostile @a ~ ~-1 ~ 1 1
