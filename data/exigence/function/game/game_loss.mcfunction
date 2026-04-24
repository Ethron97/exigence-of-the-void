# Called from detect_game_state

## CONSTRAINTS

#====================================================================================================

say You lost!

# Turn game off
function exigence:game/game_off

# Play sad sound
execute at @a[tag=PrimaryPlayer] run playsound minecraft:entity.ravager.celebrate hostile @a[tag=ActivePlayer] ~ ~1000 ~ 1000 1

# Main title
title @a[tag=ActivePlayer] title {text:"Defeat",color:"red"}

# Call Keep clears
execute as @a[tag=ActivePlayer] run function exigence:player/clear/coin
execute as @a[tag=ActivePlayer] run function exigence:player/clear/research
execute as @a[tag=ActivePlayer] run function exigence:player/clear/glint

# COINKEEP PART 1: Save how many coins they had
execute as @a[tag=ActivePlayer] store result score @s hub.coin_conversion run clear @s minecraft:gold_nugget
# Add combine all players coins into one pile
scoreboard players set coins.converting hub.coin_conversion 0
execute as @a[tag=ActivePlayer] run scoreboard players operation coins.converting hub.coin_conversion += @s hub.coin_conversion
scoreboard players reset @a[tag=ActivePlayer] hub.coin_conversion

# Clear inventory
clear @a[tag=ActivePlayer] #exigence:win_clear
clear @a[tag=ActivePlayer] #exigence:loss_clear
clear @a[scores={game.player.mod.void_bundle=0},tag=ActivePlayer] #exigence:consumable
# If VaultKeep is 1, do not clear vault keys
clear @a[scores={game.player.mod.vault_keep=0},tag=ActivePlayer] #exigence:trim_templates

execute as @a[tag=ActivePlayer] run function exigence:game/access/leave

# TEMP BREAK POINT
return 0
#----------------------------------------------------------------------------------------------------

# COINKEEP PART 2 - start after we've cleared their junk
# Choose lesser of how many coins they picked up vs how many CoinKeep they have
# Convert coins to money
execute as @a[tag=ActivePlayer,tag=PrimaryPlayer] run function exigence:hub/convert_money/convert

# Reset the game
schedule function exigence:game/game_reset 2t
