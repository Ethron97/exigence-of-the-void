# Summon selector for gatekeeping the level selector

## CONSTRAINTS
#   AS ember shop menu node
#   AT location

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 4.. run say (D4 Menu) Summon rarity selector (legendary)

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[90.0f,0.0f],billboard:"fixed",Tags:["RaritySelector","MenuDisplay","NewItemDisplay","EmberShopDisplay","EmberShopMenuDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.25f,0.25f,1.0f]},CustomName:{text:"ItemDisplay | RaritySelector"}\
,teleport_duration:2,Glowing:false\
,item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_model_data":{strings:["card_legendary"]}\
,"minecraft:custom_name":[{text:"> ",color:"gray"},{text:"Legendary",color:"light_purple"},{text:" <",color:"gray"}]\
,"minecraft:lore":[[{text:"Legendary",color:"light_purple"}],[{text:"Refresh\n",color:"gray"},{text:"Legendary",color:"light_purple"}]]\
,"minecraft:custom_data":{\
function_right:'exigence:hub/ember_shop/menu/display/rarity_selector/calls/right_clicked'\
,function_left:'exigence:hub/ember_shop/menu/display/rarity_selector/calls/left_clicked'\
,function_hover:'exigence:hub/ember_shop/menu/display/rarity_selector/calls/hover'\
,function_unhover:'exigence:hub/ember_shop/menu/display/rarity_selector/calls/unhover'\
,scale:'0.25'\
,hover_scale:'0.25'\
}}}}

# Set tag
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] add Legendary

scoreboard players set @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] ember_shop.rarity 4

# Join team for initial hover color
team join Yellow @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1]

# Assign new IDID
scoreboard players add #highest IDID 1
scoreboard players operation @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] IDID = #highest IDID

# Add ID to item data
execute store result entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".idid int 1 run scoreboard players get #highest IDID

# Remove local tag
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay