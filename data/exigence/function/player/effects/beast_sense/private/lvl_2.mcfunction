## CONSTRAINTS
#   AS/AT active living player on level 2

execute if score @s game.player.mod.beast_vision matches 0 as @e[type=minecraft:ravager,scores={ObjectLevel=2},distance=..32] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute unless score @s game.player.mod.beast_vision matches 1.. run return 1 
execute if score @s game.player.mod.beast_vision matches 1 as @e[type=minecraft:ravager,scores={ObjectLevel=2},distance=..40] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 2 as @e[type=minecraft:ravager,scores={ObjectLevel=2},distance=..48] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 3 as @e[type=minecraft:ravager,scores={ObjectLevel=2},distance=..64] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 4 as @e[type=minecraft:ravager,scores={ObjectLevel=2},distance=..80] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 5 as @e[type=minecraft:ravager,scores={ObjectLevel=2},distance=..96] run scoreboard players operation @s game.entity.glow_remaining > 20 number

execute if score @s game.player.mod.beast_vision matches 6.. as @e[type=minecraft:warden,scores={ObjectLevel=2},distance=..112] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 6.. as @e[type=minecraft:ravager,scores={ObjectLevel=2},distance=..112] run scoreboard players operation @s game.entity.glow_remaining > 20 number
