# Summon little rune ember

## CONSTRAINTS
#   AS/AT card display

#====================================================================================================

summon minecraft:item_display ~ ~ ~ {Rotation:[0.0f,0.0f],billboard:"center",Tags:["EmberShopDisplay","NewRune","Rune"],\
item:{id:"minecraft:emerald",count:1,components:{"minecraft:custom_model_data":{"strings":["letter_1"]}}}\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}\
,CustomName:{text:"ItemDisplay | EmberShopRune"}}

# Copy card name
data modify entity @n[type=minecraft:item_display,tag=NewRune,distance=..1] item.components."minecraft:custom_data".card_name set from entity @s item.components."minecraft:custom_data".card_name

# Finish setup
execute as @n[type=minecraft:item_display,tag=NewRune,distance=..1] run function exigence:hub/ember_shop/menu/display/purchase_animation/ember/rune_data
