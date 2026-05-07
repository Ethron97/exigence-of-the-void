# Called from detect_game_state

## CONSTRAINTS

#====================================================================================================

say Defeat!

# Play sad sound
execute in exigence:hub run playsound minecraft:entity.ravager.celebrate hostile @a 12.5 299.0 -11.5 1000 1

# Teleport players to hub
execute as @a[tag=ActivePlayer] in exigence:hub run tp @s 12.5 199.0 -11.5

# Main title
title @a[tag=ActivePlayer] title [{text:"Defeat",color:"red"}]

# Clear inventory
clear @a[tag=ActivePlayer] #exigence:loss_clear

#====================================================================================================

# Turn off the game
function exigence:game/game_off

# Schedule coin convert so its after the victory sound
#   Player scores were gathered from the access/leave function
schedule function exigence:game/unload/schedule_coin_conversions 40t
