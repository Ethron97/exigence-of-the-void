# Called by /game/tick/

## CONSTRAINTS
#   AS Player

#===========================================================================================================

# kill
kill @s

# Reset players
function exigence:player/utility/game_reset

#===========================================================================================================
## COPIED FROM GAME_OFF
# Clear all potion effects
effect clear @s

# Stop ambient sound bug
stopsound @s ambient

# Reset teams
team join Spectator @s

# Display post game stats
function exigence:player/stats/run_stats

# Clear all spellbound cards
execute as @s run function exigence:player/clear/all_spellbound {type:'hotbar',index:0}

# Clear actionbar
title @s actionbar ""

# Clear title
title @s clear

#===========================================================================================================
## COPIED FROM GAME_LOSS
# Play sad sound
execute at @s run playsound minecraft:entity.ravager.celebrate hostile @s ~ ~1000 ~ 1000 1

# Main title
title @s title {text:"Defeat",color:"red"}
tellraw @s {text:"You were disconnected for too long. Run abandoned.",color:"red"}

# Teleport player to the hub
execute at @e[type=minecraft:armor_stand,tag=HubCenter] run tp @s ~ ~ ~ ~ ~

# Call Keep clears
function exigence:player/clear/coin
function exigence:player/clear/research
function exigence:player/clear/glint

# COINKEEP PART 1: Save how many coins they had
execute store result score coins.converting hub.coin_conversion_alt run clear @s minecraft:gold_nugget

# Clear inventory
clear @s #exigence:win_clear
clear @s #exigence:loss_clear
clear @s[scores={game.player.mod.void_bundle=0}] #exigence:consumable
# If VaultKeep is 1, do not clear vault keys
clear @s[scores={game.player.mod.vault_keep=0}] #exigence:trim_templates

# COINKEEP PART 2 - start after we've cleared their junk
# Convert coins to money (always instant version)
function exigence:hub/convert_money/instant_alt/convert_money
