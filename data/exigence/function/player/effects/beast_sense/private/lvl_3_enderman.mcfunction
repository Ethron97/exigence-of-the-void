## CONSTRAINTS
#   AS/AT active living player on level 3

#====================================================================================================

execute if score @s game.player.mod.beast_vision matches 0 run return run scoreboard players operation @e[type=minecraft:enderman,tag=!Loaded,distance=8..32] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 1 run return run scoreboard players operation @e[type=minecraft:enderman,tag=!Loaded,distance=8..40] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 2 run return run scoreboard players operation @e[type=minecraft:enderman,tag=!Loaded,distance=8..48] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 3 run return run scoreboard players operation @e[type=minecraft:enderman,tag=!Loaded,distance=8..64] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 4 run return run scoreboard players operation @e[type=minecraft:enderman,tag=!Loaded,distance=8..80] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 5 run return run scoreboard players operation @e[type=minecraft:enderman,tag=!Loaded,distance=8..96] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 6.. run return run scoreboard players operation @e[type=minecraft:enderman,tag=!Loaded,distance=8..112] game.entity.glow_remaining > 20 number
