## CONSTRAINTS
#   AS/AT active living player on level 3

#====================================================================================================

## SWITCH
execute if score @s game.player.mod.beast_vision matches 0 run return run execute as @e[type=minecraft:ravager,scores={game.entity.object_level=3},distance=..32] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 1 run return run execute as @e[type=minecraft:ravager,scores={game.entity.object_level=3},distance=..40] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 2 run return run execute as @e[type=minecraft:ravager,scores={game.entity.object_level=3},distance=..48] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 3 run return run execute as @e[type=minecraft:ravager,scores={game.entity.object_level=3},distance=..64] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 4 run return run execute as @e[type=minecraft:ravager,scores={game.entity.object_level=3},distance=..80] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 5 run return run execute as @e[type=minecraft:ravager,scores={game.entity.object_level=3},distance=..96] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 6.. run execute as @e[type=minecraft:warden,scores={game.entity.object_level=3},distance=..112] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 6.. run execute as @e[type=minecraft:ravager,scores={game.entity.object_level=3},distance=..112] run scoreboard players operation @s game.entity.glow_remaining > 20 number
