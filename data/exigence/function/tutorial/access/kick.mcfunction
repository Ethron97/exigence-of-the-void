# All player related functionalty related to leaving the tutorial

## CONSTRAINTS
#   AS Player[tag=Tutorial]

#====================================================================================================

say Exit tutorial (kick)

# Tp back to spawn
execute in exigence:hub run spawnpoint @s 0 200 0
execute in exigence:hub run tp @s 3.5 195.0 -64.5 90 0

function exigence:tutorial/access/private/reset_player

scoreboard players reset @s hub.player.room_id

# DEBUG
#execute if data storage exigence:debug {tutorial:0} run function exigence:tutorial/toggle_debug
gamemode creative @s[tag=Admin]
effect give @s[tag=Admin] night_vision infinite 0 true