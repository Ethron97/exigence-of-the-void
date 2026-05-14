# Tutorial tick player

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

# kill carrot on stick on ground
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},distance=..10]

# Give new stick if they don't have one
execute store result score #temp Temp run clear @s carrot_on_a_stick[custom_data~{item_name:'exit_tutorial'}] 0
execute if score #temp Temp matches 0 run give @s minecraft:carrot_on_a_stick[custom_name=[{text:"Exit Tutorial",color:"red",italic:false}],custom_data={item_name:'exit_tutorial'},custom_model_data={strings:["exit_button"]}]

execute store result score #temp Temp run clear @s carrot_on_a_stick[custom_data~{item_name:'skip_section'}] 0
execute if score #temp Temp matches 0 run give @s minecraft:carrot_on_a_stick[custom_name=[{text:"Skip Section",color:"yellow",italic:false}],custom_data={item_name:'skip_section'},custom_model_data={strings:["skip_button"]}]

# Step checks
function exigence:tutorial/flow/step_check

# 1. Detect if there is Ravager Glass TM beneath, inside, or above the active player. If there is, run
execute if entity @s[gamemode=adventure] run function exigence:player/ravager_glass/check

execute if score @s dead matches 1 run function exigence:tutorial/flow/death

# DISPLAYS
execute if score tut.step hub.tutorial matches 205..1002 run title @s actionbar [{text:"[",color:"green"},{text:"❂❂",color:"dark_green"},{text:"",color:"dark_gray"},{text:"]",color:"green"}]
execute if score tut.step hub.tutorial matches 1003 run title @s actionbar [{text:"[",color:"green"},{text:"❂❂",color:"dark_green"},{text:"",color:"dark_gray"},{text:"]",color:"green"}\
,{text:"   [",color:"dark_aqua"},{text:"❂",color:"aqua"},{text:"❂",color:"dark_gray"},{text:"]",color:"dark_aqua"}]
execute if score tut.step hub.tutorial matches 1004..1101 run title @s actionbar [{text:"[",color:"green"},{text:"❂❂",color:"dark_green"},{text:"",color:"dark_gray"},{text:"]",color:"green"}\
,{text:"   [",color:"dark_aqua"},{text:"❂❂",color:"aqua"},{text:"]",color:"dark_aqua"}]
execute if score tut.step hub.tutorial matches 1102..1202 run title @s actionbar [{text:"[",color:"green"},{text:"❂",color:"dark_green"},{text:"❂",color:"dark_gray"},{text:"]",color:"green"}\
,{text:"   [",color:"dark_aqua"},{text:"❂❂",color:"aqua"},{text:"]",color:"dark_aqua"}]
execute if score tut.step hub.tutorial matches 1203..1301 run title @s actionbar [{text:"[",color:"green"},{text:"❂",color:"dark_green"},{text:"❂",color:"dark_gray"},{text:"]",color:"green"}\
,{text:"   [",color:"red"},{text:"❂",color:"dark_red"},{text:"❂",color:"dark_gray"},{text:"]",color:"red"}\
,{text:"   [",color:"dark_aqua"},{text:"❂❂",color:"aqua"},{text:"]",color:"dark_aqua"}]
execute if score tut.step hub.tutorial matches 1302..1501 run title @s actionbar [{text:"[",color:"green"},{text:"❂",color:"dark_green"},{text:"❂",color:"dark_gray"},{text:"]",color:"green"}\
,{text:"   [",color:"red"},{text:"",color:"dark_red"},{text:"❂❂",color:"dark_gray"},{text:"]",color:"red"}\
,{text:"   [",color:"dark_aqua"},{text:"❂❂",color:"aqua"},{text:"]",color:"dark_aqua"}]
execute if score tut.step hub.tutorial matches 1502.. unless entity @e[type=minecraft:marker,tag=TutorialExitNode,distance=..2] run title @s actionbar [{text:"[",color:"green"},{text:"❂",color:"dark_green"},{text:"❂",color:"dark_gray"},{text:"]",color:"green"}\
,{text:"   [",color:"red"},{text:"❂",color:"dark_red"},{text:"❂",color:"dark_gray"},{text:"]",color:"red"}\
,{text:"   [",color:"dark_aqua"},{text:"❂❂",color:"aqua"},{text:"]",color:"dark_aqua"}]

# Check for carrot click
execute if score @s CarrotOnStick matches 1.. run function exigence:tutorial/utility/use_item