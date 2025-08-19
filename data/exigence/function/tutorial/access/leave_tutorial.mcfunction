# All player related functionalty related to leaving the tutorial

## CONSTRAINTS
#   AS Player[tag=Tutorial]

#=============================================================================================================

# DEBUG
say Exit tutorial
execute if data storage exigence:debug {tutorial:0} run function exigence:tutorial/toggle_debug
gamemode creative @s


function exigence:tutorial/reset

# Tp back to spawn
#execute in minecraft:overworld at @e[tag=HubCenter,limit=1] run teleport @s ~ ~ ~ ~ ~
#execute in minecraft:overworld at @e[tag=HubCenter,limit=1] run spawnpoint @s ~ ~ ~
tp @s 67.54 100.00 13.48

# Give advancement? Only if they win
#advancement grant @s only exigence:story/win_difficulty_0

clear @s
tag @s remove Tutorial
team leave @s
effect clear @s

function exigence:bossbar/tutorial/hide
function exigence:bossbar/tutorial_deck/hide

# Reset tutorial token
scoreboard players set Tutorial RoomToken 0

data modify storage exigence:dungeon tutorial set value 0

title @s actionbar ""

# DEBUG
effect give @s night_vision infinite 0 true
