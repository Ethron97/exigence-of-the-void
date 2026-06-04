## CONSTRAINTS
#   AS/AT active living player on level 4

#====================================================================================================

## SWITCH
execute if score @s game.player.mod.beast_vision matches 0 run return run scoreboard players operation @e[type=minecraft:ravager,scores={game.entity.object_level=4},distance=..32] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 1 run return run scoreboard players operation @e[type=minecraft:ravager,scores={game.entity.object_level=4},distance=..40] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 2 run return run scoreboard players operation @e[type=minecraft:ravager,scores={game.entity.object_level=4},distance=..48] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 3 run return run scoreboard players operation @e[type=minecraft:ravager,scores={game.entity.object_level=4},distance=..64] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 4 run return run scoreboard players operation @e[type=minecraft:ravager,scores={game.entity.object_level=4},distance=..80] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 5 run return run scoreboard players operation @e[type=minecraft:ravager,scores={game.entity.object_level=4},distance=..96] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 6.. run scoreboard players operation @e[type=minecraft:warden,scores={game.entity.object_level=4},distance=..112] game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 6.. run scoreboard players operation @e[type=minecraft:ravager,scores={game.entity.object_level=4},distance=..112] game.entity.glow_remaining > 20 number
