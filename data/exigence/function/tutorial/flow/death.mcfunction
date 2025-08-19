# Called when player dies in the tutorial

## CONSTRAINTS
#   AS player

#=============================================================================================================

# DEBUG
say Tutorial Deathed
effect give @s night_vision infinite 0 true

# Reset scores
function exigence:game/game_reset/reset_player_scores


# Save fallback
execute as @e[distance=..1000,type=marker,tag=TutorialMarker,tag=Fallback] run tag @s add SuperFallback
# Reset tutorial
function exigence:tutorial/reset
# Restore fallback
execute as @e[distance=..1000,type=marker,tag=TutorialMarker,tag=SuperFallback] run tag @s add Fallback
execute as @e[distance=..1000,type=marker,tag=TutorialMarker,tag=SuperFallback] run tag @s remove SuperFallback

clear @s

# set step to fallback
scoreboard players operation Step Tutorial = Fallback Tutorial
execute if score Step Tutorial matches 1500 run fill 175 131 49 177 134 47 structure_void replace ice
rotate @s ~180 ~

# Reset all dropped/fallback tags
tag @n[distance=..1000,type=marker,tag=TutorialMarker,tag=Fallback] add LastDropped
scoreboard players operation #compare TutorialMarkerID = @n[distance=..1000,type=marker,tag=TutorialMarker,tag=Fallback] TutorialMarkerID
execute as @e[distance=..1000,type=marker,tag=TutorialMarker] if score @s TutorialMarkerID <= #compare TutorialMarkerID run tag @s add Dropped

# Give "exit" button and "skip" button
item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[custom_name=[{text:"Exit Tutorial",color:"red",italic:false}],custom_data={item_name:'exit_tutorial'}]
item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick[custom_name=[{text:"Skip Section",color:"yellow",italic:false}],custom_data={item_name:'skip_section'}]

# Restart chain
function exigence:tutorial/flow/next_token

bossbar set exigence:tutorial name {text:"",color:"green",italic:false}
bossbar set exigence:tutorial value 0

tellraw @s [{text:"-> Try again!",color:"green"}]

function exigence:tutorial/flow/reset_bossbars
