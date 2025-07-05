# Called when detect_game_state
say You lost!

# Turn game off
function exigence:game/game_off

# Play sad sound
execute at @a[tag=PrimaryPlayer] run playsound minecraft:entity.ravager.celebrate hostile @a[tag=ActivePlayer] ~ ~1000 ~ 1000 1

# Main title
title @a[tag=ActivePlayer] title {text:"Defeat",color:"red"}

# Teleport player to the hub
#execute as @e[type=minecraft:armor_stand,tag=HubCenter] at @s run spreadplayers ~ ~ 1 2 under 20 false @a[tag=ActivePlayer]
execute as @e[type=minecraft:armor_stand,tag=HubCenter] at @s run tp @a[tag=ActivePlayer] ~ ~ ~ ~ ~

# Call Keep clears
execute as @a[tag=ActivePlayer] run function exigence:player/clear/coin
execute as @a[tag=ActivePlayer] run function exigence:player/clear/research
execute as @a[tag=ActivePlayer] run function exigence:player/clear/glint


# COINKEEP PART 1: Save how many coins they had
execute as @a[tag=ActivePlayer] store result score @s CoinsToConvert run clear @s minecraft:gold_nugget
# Add combine all players coins into one pile
scoreboard players set Coins CoinsToConvert 0
execute as @a[tag=ActivePlayer] run scoreboard players operation Coins CoinsToConvert += @s CoinsToConvert
scoreboard players reset @a[tag=ActivePlayer] CoinsToConvert

# Clear inventory
clear @a[tag=ActivePlayer] #exigence:win_clear
clear @a[tag=ActivePlayer] #exigence:loss_clear
clear @a[tag=ActivePlayer,scores={mod_VoidBundle=0}] #exigence:consumable
# If VaultKeep is 1, do not clear vault keys
clear @a[tag=ActivePlayer,scores={mod_VaultKeep=0}] #exigence:trim_templates

# COINKEEP PART 2 - start after we've cleared their junk
# Choose lesser of how many coins they picked up vs how many CoinKeep they have
# Convert coins to money
execute as @a[tag=ActivePlayer,tag=PrimaryPlayer] run function exigence:hub/convert_money/convert

# Reset the game
schedule function exigence:game/game_reset 2t
