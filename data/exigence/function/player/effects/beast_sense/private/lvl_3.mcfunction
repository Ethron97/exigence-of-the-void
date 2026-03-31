## CONSTRAINTS
#   AS/AT active living player on level 3

# Do level 0s
execute if score @s game.player.mod.beast_vision matches 0 as @e[type=minecraft:ravager,scores={ObjectLevel=3},distance=..32] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 0 if score Voidscent Modifiers matches 1 as @e[type=minecraft:enderman,distance=8..32] run scoreboard players operation @s game.entity.glow_remaining > 20 number

# Only continue if mod > 0
execute unless score @s game.player.mod.beast_vision matches 1.. run return 1 
execute if score @s game.player.mod.beast_vision matches 1 as @e[type=minecraft:ravager,scores={ObjectLevel=3},distance=..40] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 2 as @e[type=minecraft:ravager,scores={ObjectLevel=3},distance=..48] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 3 as @e[type=minecraft:ravager,scores={ObjectLevel=3},distance=..64] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 4 as @e[type=minecraft:ravager,scores={ObjectLevel=3},distance=..80] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 5 as @e[type=minecraft:ravager,scores={ObjectLevel=3},distance=..96] run scoreboard players operation @s game.entity.glow_remaining > 20 number

execute if score @s game.player.mod.beast_vision matches 6.. as @e[type=minecraft:warden,scores={ObjectLevel=3},distance=..112] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 6.. as @e[type=minecraft:ravager,scores={ObjectLevel=3},distance=..112] run scoreboard players operation @s game.entity.glow_remaining > 20 number

# If Voidscent (else return)
execute unless score Voidscent Modifiers matches 1 run return 0

execute if score @s game.player.mod.beast_vision matches 1 as @e[type=minecraft:enderman,distance=8..40] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 2 as @e[type=minecraft:enderman,distance=8..48] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 3 as @e[type=minecraft:enderman,distance=8..64] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 4 as @e[type=minecraft:enderman,distance=8..80] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 5 as @e[type=minecraft:enderman,distance=8..96] run scoreboard players operation @s game.entity.glow_remaining > 20 number
execute if score @s game.player.mod.beast_vision matches 6.. as @e[type=minecraft:enderman,distance=8..112] run scoreboard players operation @s game.entity.glow_remaining > 20 number
