# Called when player dies in the tutorial

## CONSTRAINTS
#   AS player

#====================================================================================================

# DEBUG
#say (D3) Tutorial Deathed
effect give @s night_vision infinite 0 true

# Reset scores
function exigence:scoreboard/generated_functions/reset_on_enter

# Save fallback
execute as @e[type=minecraft:marker,tag=TutorialMarker,tag=Fallback,distance=..1000] run tag @s add SuperFallback
# Reset tutorial
function exigence:tutorial/reset
# Restore fallback
execute as @e[type=minecraft:marker,tag=TutorialMarker,tag=SuperFallback,distance=..1000] run tag @s add Fallback
execute as @e[type=minecraft:marker,tag=TutorialMarker,tag=SuperFallback,distance=..1000] run tag @s remove SuperFallback

clear @s

# set step to fallback
scoreboard players operation Step Tutorial = Fallback Tutorial
execute if score Step Tutorial matches 1500 run fill 175 131 49 177 134 47 structure_void replace ice
rotate @s ~180 ~

# Reset all dropped/fallback tags
tag @n[type=minecraft:marker,tag=TutorialMarker,tag=Fallback,distance=..1000] add LastDropped
scoreboard players operation #compare TutorialMarkerID = @n[type=minecraft:marker,tag=TutorialMarker,tag=Fallback,distance=..1000] TutorialMarkerID
execute as @e[type=minecraft:marker,tag=TutorialMarker,distance=..1000] if score @s TutorialMarkerID <= #compare TutorialMarkerID run tag @s add Dropped

# Give "exit" button and "skip" button
item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[custom_name=[{text:"Exit Tutorial",color:"red",italic:false}],custom_data={item_name:'exit_tutorial'},custom_model_data={strings:["exit_button"]}]
item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick[custom_name=[{text:"Skip Section",color:"yellow",italic:false}],custom_data={item_name:'skip_section'},custom_model_data={strings:["skip_button"]}]

# Restart chain
function exigence:tutorial/flow/next_token

bossbar set exigence:tutorial name {text:"",color:"green",italic:false}
bossbar set exigence:tutorial value 0

tellraw @s [{text:"-> Try again!",color:"green"}]

function exigence:tutorial/flow/reset_bossbars
