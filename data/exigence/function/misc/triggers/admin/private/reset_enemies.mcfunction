# If game is not active, unload and reset all enemies

## CONSTRAINTS
#   Game inactive

#====================================================================================================
execute if score game.is_active game.state matches 1 run return run tellraw @s [{text:"✖ Game is active",color:"red"}]
#----------------------------------------------------------------------------------------------------

scoreboard players set game.cancel_load hub.room_misc 0
scoreboard players set game.difficulty game.state 4

function exigence:game/load/load_enemies_spawn
schedule function exigence:game/load/load_enemies_setup 1t
schedule function exigence:game/load/load_enemies_distribute 2t