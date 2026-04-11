# Cause player to enter and begin the tutorial
#   Only meant to be called when they ENTER the tutorial.
#   Anything that must be reset on death should be in the load function.

## CONSTRAINTS
#   IN exigence:tutorial
#   AS player

#====================================================================================================

# DEBUG
#say (D3) Enter Tutorial
effect clear @s night_vision

# Reset scores
function exigence:scoreboard/generated_functions/reset_on_enter

# Load tutorial
execute in exigence:tutorial run function exigence:tutorial/load

# Give "exit" button and "skip" button
item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[custom_name=[{text:"Exit Tutorial",color:"red",italic:false}],custom_data={item_name:'exit_tutorial'},custom_model_data={strings:["exit_button"]}]
item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick[custom_name=[{text:"Skip Section",color:"yellow",italic:false}],custom_data={item_name:'skip_section'},custom_model_data={strings:["skip_button"]}]

# Teleport to canyon
tp @s 76.5 100.0 15.5 -30 0

effect clear @s regeneration
gamemode adventure @s
spawnpoint @s 75 100 15
tag @s add Tutorial
team join Tutorial @s
attribute @s minecraft:safe_fall_distance modifier remove exigence:safe_fall

# Initialize bossbar
function exigence:bossbar/tutorial/initialize

# Enable triggers
scoreboard players enable @s SkipSection
scoreboard players enable @s ExitTutorial

# Playsound(s)
execute at @s run playsound minecraft:entity.enderman.teleport ui @s ~ ~100 ~ 100 1

# TEMP TESTING
#scoreboard players set Fallback Tutorial 1001
#spawnpoint @a[tag=Tutorial] 80 123 143
#execute as @n[distance=..1000,type=marker,tag=TutorialMarker,scores={TutorialMarkerID=37}] run tag @s add Fallback
#kill @s

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Summon Room Node
scoreboard players set #room_type Temp 1
execute in exigence:hub positioned 100 200 100 run function exigence:room/node/new

# Assign room ids
#   PLAYER
scoreboard players operation @s hub.player.room_id = #next hub.room.room_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15] if score @s profile.node.player_id = #compare career.player_id \
run scoreboard players operation @s player.node.room_id = #next hub.room.room_id
#   FK (link room node to specific room node)
scoreboard players operation @n[tag=ProfileSelectorNode,distance=..1] hub.entity.room_id = #next hub.room.room_id
