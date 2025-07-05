## CONSTRAINTS
#   AS/AT active living player on level 3

# Do level 0s
execute if score @s mod_BeastVision matches 0 as @e[distance=..32,type=minecraft:ravager,scores={ObjectLevel=3}] run scoreboard players operation @s GlowRemaining > 20 number
execute if score @s mod_BeastVision matches 0 if score Voidscent Modifiers matches 1 as @e[distance=8..32,type=minecraft:enderman] run scoreboard players operation @s GlowRemaining > 20 number

# Only continue if mod > 0
execute unless score @s mod_BeastVision matches 1.. run return 1 
execute if score @s mod_BeastVision matches 1 as @e[distance=..40,type=minecraft:ravager,scores={ObjectLevel=3}] run scoreboard players operation @s GlowRemaining > 20 number
execute if score @s mod_BeastVision matches 2 as @e[distance=..48,type=minecraft:ravager,scores={ObjectLevel=3}] run scoreboard players operation @s GlowRemaining > 20 number
execute if score @s mod_BeastVision matches 3 as @e[distance=..64,type=minecraft:ravager,scores={ObjectLevel=3}] run scoreboard players operation @s GlowRemaining > 20 number
execute if score @s mod_BeastVision matches 4 as @e[distance=..80,type=minecraft:ravager,scores={ObjectLevel=3}] run scoreboard players operation @s GlowRemaining > 20 number
execute if score @s mod_BeastVision matches 5 as @e[distance=..96,type=minecraft:ravager,scores={ObjectLevel=3}] run scoreboard players operation @s GlowRemaining > 20 number

execute if score @s mod_BeastVision matches 6.. as @e[distance=..112,type=minecraft:warden,scores={ObjectLevel=3}] run scoreboard players operation @s GlowRemaining > 20 number
execute if score @s mod_BeastVision matches 6.. as @e[distance=..112,type=minecraft:ravager,scores={ObjectLevel=3}] run scoreboard players operation @s GlowRemaining > 20 number

# If Voidscent (else return)
execute unless score Voidscent Modifiers matches 1 run return 0

execute if score @s mod_BeastVision matches 1 as @e[distance=8..40,type=minecraft:enderman] run scoreboard players operation @s GlowRemaining > 20 number
execute if score @s mod_BeastVision matches 2 as @e[distance=8..48,type=minecraft:enderman] run scoreboard players operation @s GlowRemaining > 20 number
execute if score @s mod_BeastVision matches 3 as @e[distance=8..64,type=minecraft:enderman] run scoreboard players operation @s GlowRemaining > 20 number
execute if score @s mod_BeastVision matches 4 as @e[distance=8..80,type=minecraft:enderman] run scoreboard players operation @s GlowRemaining > 20 number
execute if score @s mod_BeastVision matches 5 as @e[distance=8..96,type=minecraft:enderman] run scoreboard players operation @s GlowRemaining > 20 number
execute if score @s mod_BeastVision matches 6.. as @e[distance=8..112,type=minecraft:enderman] run scoreboard players operation @s GlowRemaining > 20 number
