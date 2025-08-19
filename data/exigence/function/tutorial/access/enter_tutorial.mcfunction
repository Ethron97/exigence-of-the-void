# Cause player to enter and begin the tutorial
#   Only meant to be called when they ENTER the tutorial.
#   Anything that must be reset on death should be in the load function.

## CONSTRAINTS
#   IN exigence:tutorial
#   AS player

#=============================================================================================================

# DEBUG
say Enter Tutorial

# Reset scores
function exigence:game/game_reset/reset_player_scores

# Turn tutorial on
data modify storage exigence:dungeon tutorial set value 1

# Give room token
function exigence:room/tutorial/new_token
scoreboard players operation @s RoomToken = Tutorial RoomToken

# Give "exit" button and "skip" button
item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[custom_name=[{text:"Exit Tutorial",color:"red",italic:false}],custom_data={item_name:'exit_tutorial'}]
item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick[custom_name=[{text:"Skip Section",color:"yellow",italic:false}],custom_data={item_name:'skip_section'}]

# Teleport to canyon
tp @s 76.5 100.0 15.5 -30 0

# Initilize stepping / messaging / handling
scoreboard players set Fallback Tutorial 1
scoreboard players set Step Tutorial 0

effect clear @s regeneration
tag @s add Tutorial
gamemode adventure @s
spawnpoint @s 75 100 15
team join Tutorial @s

# Initialize bossbar
function exigence:bossbar/tutorial/initialize

# Load tutorial
function exigence:tutorial/reset
function exigence:tutorial/flow/next_token


execute if data storage exigence:debug {tutorial:1} run function exigence:tutorial/toggle_debug


# TEMP TESTING
#scoreboard players set Fallback Tutorial 1001
#spawnpoint @a[tag=Tutorial] 80 123 143
#execute as @n[distance=..1000,type=marker,tag=TutorialMarker,scores={TutorialMarkerID=37}] run tag @s add Fallback
#kill @s
