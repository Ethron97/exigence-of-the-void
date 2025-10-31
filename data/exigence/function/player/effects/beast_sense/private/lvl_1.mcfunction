## CONSTRAINTS
#   AS/AT active living player on level 1

execute if score @s game.player.mod.beast_vision matches 0 as @e[distance=..32,type=minecraft:ravager,scores={ObjectLevel=1}] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute unless score @s game.player.mod.beast_vision matches 1.. run return 1 
execute if score @s game.player.mod.beast_vision matches 1 as @e[distance=..40,type=minecraft:ravager,scores={ObjectLevel=1}] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 2 as @e[distance=..48,type=minecraft:ravager,scores={ObjectLevel=1}] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 3 as @e[distance=..64,type=minecraft:ravager,scores={ObjectLevel=1}] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 4 as @e[distance=..80,type=minecraft:ravager,scores={ObjectLevel=1}] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 5 as @e[distance=..96,type=minecraft:ravager,scores={ObjectLevel=1}] run scoreboard players operation @s game.entity.glow_remaining > 20 number

execute if score @s game.player.mod.beast_vision matches 6.. as @e[distance=..112,type=minecraft:warden,scores={ObjectLevel=1}] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 6.. as @e[distance=..112,type=minecraft:ravager,scores={ObjectLevel=1}] run scoreboard players operation @s game.entity.glow_remaining > 20 number
