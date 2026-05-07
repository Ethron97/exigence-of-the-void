# All player related functionalty related to leaving the tutorial

## CONSTRAINTS
#   AS Player[tag=Tutorial]

#====================================================================================================

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Exit tutorial (kick)

# Tp back to spawn
execute in exigence:hub run spawnpoint @s 0 200 0
execute in exigence:hub run tp @s 3.5 195.0 -64.5 90 0

function exigence:tutorial/access/private/reset_player

scoreboard players reset @s hub.player.room_id

# DEBUG
#execute if score toggle.tutorial debug matches 0 run function exigence:tutorial/admin/toggle_tutorial_debug
gamemode creative @s[tag=Admin]
effect give @s[tag=Admin] night_vision infinite 0 true