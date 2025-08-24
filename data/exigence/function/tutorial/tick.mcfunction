# Called by hub_tick each tick if tutorial is active

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

scoreboard players add ticks Tutorial 1

# Check for carrot click
execute as @a[distance=..1000,tag=Tutorial,scores={CarrotOnStick=1..}] run function exigence:tutorial/utility/use_item

# kill carrot on stick on ground
kill @e[distance=..1000,type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

# Give new stick if they don't have one
#item replace entity @a[distance=..1000,tag=Tutorial,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] hotbar.8 with minecraft:carrot_on_a_stick[custom_name=[{text:"Exit Tutorial",color:"red",italic:false}]]
execute as @a[distance=..1000,tag=Tutorial] unless predicate exigence:tutorial/exit_tutorial run \
give @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{"item_name":'exit_tutorial'}}}]}] minecraft:carrot_on_a_stick[custom_name=[{text:"Exit Tutorial",color:"red",italic:false}],custom_data={item_name:'exit_tutorial'},custom_model_data={strings:["exit_button"]}]

execute as @a[distance=..1000,tag=Tutorial] unless predicate exigence:tutorial/skip_section run \
give @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{"item_name":'skip_section'}}}]}] minecraft:carrot_on_a_stick[custom_name=[{text:"Skip Section",color:"yellow",italic:false}],custom_data={item_name:'skip_section'},custom_model_data={strings:["skip_button"]}]

# Step checks
function exigence:tutorial/flow/step_check

# Only trigger if dungeon is inactive, to prevent double tick
execute unless data storage exigence:dungeon {is_active:1} run function exigence:game/other/ravager_glass/ravager_glass_tick

execute as @a[tag=Tutorial,scores={dead=1}] run function exigence:tutorial/flow/death

# DISPLAYS
execute if score Step Tutorial matches 205..1002 run title @a[tag=Tutorial] actionbar [{text:"[",color:"green"},{text:"❂❂",color:"dark_green"},{text:"",color:"dark_gray"},{text:"]",color:"green"}]
execute if score Step Tutorial matches 1003 run title @a[tag=Tutorial] actionbar [{text:"[",color:"green"},{text:"❂❂",color:"dark_green"},{text:"",color:"dark_gray"},{text:"]",color:"green"}\
,{text:"   [",color:"dark_aqua"},{text:"❂",color:"aqua"},{text:"❂",color:"dark_gray"},{text:"]",color:"dark_aqua"}]
execute if score Step Tutorial matches 1004..1101 run title @a[tag=Tutorial] actionbar [{text:"[",color:"green"},{text:"❂❂",color:"dark_green"},{text:"",color:"dark_gray"},{text:"]",color:"green"}\
,{text:"   [",color:"dark_aqua"},{text:"❂❂",color:"aqua"},{text:"]",color:"dark_aqua"}]
execute if score Step Tutorial matches 1102..1202 run title @a[tag=Tutorial] actionbar [{text:"[",color:"green"},{text:"❂",color:"dark_green"},{text:"❂",color:"dark_gray"},{text:"]",color:"green"}\
,{text:"   [",color:"dark_aqua"},{text:"❂❂",color:"aqua"},{text:"]",color:"dark_aqua"}]
execute if score Step Tutorial matches 1203..1301 run title @a[tag=Tutorial] actionbar [{text:"[",color:"green"},{text:"❂",color:"dark_green"},{text:"❂",color:"dark_gray"},{text:"]",color:"green"}\
,{text:"   [",color:"red"},{text:"❂",color:"dark_red"},{text:"❂",color:"dark_gray"},{text:"]",color:"red"}\
,{text:"   [",color:"dark_aqua"},{text:"❂❂",color:"aqua"},{text:"]",color:"dark_aqua"}]
execute if score Step Tutorial matches 1302..1501 run title @a[tag=Tutorial] actionbar [{text:"[",color:"green"},{text:"❂",color:"dark_green"},{text:"❂",color:"dark_gray"},{text:"]",color:"green"}\
,{text:"   [",color:"red"},{text:"",color:"dark_red"},{text:"❂❂",color:"dark_gray"},{text:"]",color:"red"}\
,{text:"   [",color:"dark_aqua"},{text:"❂❂",color:"aqua"},{text:"]",color:"dark_aqua"}]
execute as @a[distance=..1000,tag=Tutorial] if score Step Tutorial matches 1502.. unless entity @e[distance=..2,type=minecraft:marker,tag=TutorialExitNode] run title @s actionbar [{text:"[",color:"green"},{text:"❂",color:"dark_green"},{text:"❂",color:"dark_gray"},{text:"]",color:"green"}\
,{text:"   [",color:"red"},{text:"❂",color:"dark_red"},{text:"❂",color:"dark_gray"},{text:"]",color:"red"}\
,{text:"   [",color:"dark_aqua"},{text:"❂❂",color:"aqua"},{text:"]",color:"dark_aqua"}]

# Player entering final section door
execute if score Step Tutorial matches 1500 if entity @a[tag=Tutorial,x=173,y=130,z=43,dx=10,dy=5,dz=2] run function exigence:tutorial/flow/step

# ALTARS
# Inactive altars
execute at @e[distance=..1000,type=minecraft:armor_stand,tag=AltarNode,scores={NodeState=0..1}] if score SecondsCooldown TickCounter matches 7 run particle minecraft:glow ~ ~0.5 ~ 0.2 0.2 0.2 0 1
execute at @e[distance=..1000,type=minecraft:armor_stand,tag=AltarNode,scores={NodeState=0..1}] if score SecondsCooldown TickCounter matches 17 run particle minecraft:glow ~ ~0.5 ~ 0.2 0.2 0.2 0 1
# Radiant altars
execute at @e[distance=..1000,type=minecraft:armor_stand,tag=AltarNode,scores={NodeState=2}] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0 3

execute at @e[distance=..1000,type=minecraft:armor_stand,tag=BellNode,tag=Active] if score SecondsCooldown TickCounter matches 7 run particle minecraft:glow ~ ~0.5 ~ 0.2 0.2 0.2 0 1
execute at @e[distance=..1000,type=minecraft:armor_stand,tag=BellNode,tag=Active] if score SecondsCooldown TickCounter matches 17 run particle minecraft:glow ~ ~0.5 ~ 0.2 0.2 0.2 0 1

# CLIMBY DOOR OPEN
execute if score Step Tutorial matches 1103 at @n[distance=..1000,type=armor_stand,tag=Bait1] if entity @n[distance=..2,type=ravager] run function exigence:tutorial/flow/private/open_climby_door
execute if score Step Tutorial matches 1308 at @n[distance=..1000,type=armor_stand,tag=Bait2] if entity @n[distance=..2,type=ravager] run function exigence:tutorial/flow/private/open_glassy_door

execute if score Step Tutorial matches 1501.. run function exigence:tutorial/flow/final_section/tick

# Win check
execute as @a[distance=..1000,tag=Tutorial] at @s if entity @e[distance=..2,type=minecraft:marker,tag=TutorialExitNode] if score Step Tutorial matches 1501 run title @s actionbar {text:"You must collect the Echo Shard to escape!",color:"red"}
execute as @a[distance=..1000,tag=Tutorial] at @s if entity @e[distance=..2,type=minecraft:marker,tag=TutorialExitNode] if score Step Tutorial matches 1502 run function exigence:tutorial/access/complete_tutorial
