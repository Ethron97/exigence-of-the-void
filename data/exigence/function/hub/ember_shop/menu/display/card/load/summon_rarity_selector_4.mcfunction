# Summon selector for gatekeeping the level selector

## CONSTRAINTS
#   AS ember shop menu node
#   AT location

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 4.. run say (D4 Menu) Summon rarity selector (legendary)

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[90.0f,0.0f],billboard:"fixed",Tags:["RaritySelector","MenuDisplay","NewItemDisplay","EmberShopDisplay","EmberShopMenuDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,1.0f]},CustomName:{text:"ItemDisplay | RaritySelector"}\
,interpolation_duration:3,Glowing:false\
,item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["card_legendary"]}\
,"minecraft:custom_data":{\
function_right:'exigence:hub/ember_shop/menu/display/card/calls/right_clicked'\
,function_left:'exigence:hub/ember_shop/menu/display/card/calls/left_clicked'\
,function_hover:'exigence:hub/ember_shop/menu/display/card/calls/hover'\
,function_unhover:'exigence:hub/ember_shop/menu/display/card/calls/unhover'\
,scale:'0.25'\
,hover_scale:'0.25'\
}}}}

# Set tag
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] add Legendary

# Join team for initial hover color
team join Yellow @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1]

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] IDID = #highest IDID

# Add ID to item data
execute store result entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Remove local tag
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay