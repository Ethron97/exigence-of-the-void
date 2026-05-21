# Called when player dies in the tutorial

## CONSTRAINTS
#   AS player

#====================================================================================================

# DEBUG
execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Tutorial Deathed
#effect give @s night_vision infinite 0 true

# Reset waypoint receive
attribute @s minecraft:waypoint_receive_range base set 0

# Reset scores
function exigence:scoreboard/generated_functions/reset_on_enter

# Save fallback
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=Fallback] run tag @s add SuperFallback
# Reset tutorial
function exigence:tutorial/reset
# Restore fallback
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=SuperFallback] run tag @s add Fallback
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=SuperFallback] run tag @s remove SuperFallback

clear @s

# set step to fallback
scoreboard players operation tut.step hub.tutorial = tut.fallback hub.tutorial
execute if score tut.step hub.tutorial matches 1500 run fill 175 131 49 177 134 47 structure_void replace ice
rotate @s ~180 ~

# Reset all dropped/fallback tags
tag @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=Fallback] add LastDropped
scoreboard players operation #compare tutorial.marker.id = @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=Fallback] tutorial.marker.id
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker] if score @s tutorial.marker.id <= #compare tutorial.marker.id run tag @s add Dropped

# Give "exit" button and "skip" button
item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[custom_name=[{text:"Exit Tutorial",color:"red",italic:false}],custom_data={item_name:'exit_tutorial'},custom_model_data={strings:["exit_button"]}]
item replace entity @s hotbar.7 with minecraft:carrot_on_a_stick[custom_name=[{text:"Skip Section",color:"yellow",italic:false}],custom_data={item_name:'skip_section'},custom_model_data={strings:["skip_button"]}]

# Restart chain
function exigence:tutorial/flow/next_token

bossbar set exigence:tutorial name {text:"",color:"green",italic:false}
bossbar set exigence:tutorial value 0

tellraw @s [{text:"-> Try again!",color:"green"}]

function exigence:tutorial/flow/reset_bossbars
