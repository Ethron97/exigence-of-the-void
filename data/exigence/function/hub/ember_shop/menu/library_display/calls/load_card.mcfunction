# Load single card from library display
#   Called when this card gets marked as Loaded

## CONSTRAINTS
#   AS library display
#   AT location ("anchor" point of card shop 52.5 212.0 0.5 )

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[90.0f,0.0f],billboard:"fixed",Tags:["CardDisplay","MenuDisplay","NewItemDisplay","EmberShopDisplay","EmberShopMenuDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,1.0f]},CustomName:{text:"ItemDisplay | CardDisplay"}\
,interpolation_duration:3,Glowing:false\
,item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{\
function_right:'exigence:hub/ember_shop/menu/display/card/calls/right_clicked'\
,function_left:'exigence:hub/ember_shop/menu/display/card/calls/left_clicked'\
,function_hover:'exigence:hub/ember_shop/menu/display/card/calls/hover'\
,function_unhover:'exigence:hub/ember_shop/menu/display/card/calls/unhover'\
,scale:'0.5'\
,hover_scale:'0.5'\
}}}}

# Copy item data
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item set from entity @s item

# Join glow team
#team join 

tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] remove NewItemDisplay