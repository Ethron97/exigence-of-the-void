# Kill from kill queue

## CONSTRAINTS
#   AS player

#====================================================================================================

scoreboard players remove @s game.player.kill_queue 1

execute if score @s game.player.kill_queue matches 1.. run return 0
#----------------------------------------------------------------------------------------------------
# Else, if kill queue reaches 0

say KILL KILL KILL
scoreboard players reset @s game.player.kill_queue
kill @s
