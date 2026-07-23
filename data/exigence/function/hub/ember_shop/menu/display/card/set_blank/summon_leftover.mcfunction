# Called when card is purchased; leave behind a marker so the slot doesn't look weird
#   Call AFTER setting the main card display blank

## CONSTRAINTS
#   AS/AT card display

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[90.0f,0.0f],billboard:"fixed",Tags:["CardDisplay","Leftover","NewItemDisplay","EmberShopDisplay","Displaying"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.5f]},CustomName:{text:"ItemDisplay | Leftover"}\
,teleport_duration:3,interpolation_duration:3,Glowing:false\
,item:{id:"minecraft:paper",count:1}}

# Copy item data
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item set from entity @s item

# Copy position
scoreboard players operation @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] ember_shop.display_sequence = @s ember_shop.display_sequence
# Copy teleport duration
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] teleport_duration set from entity @s teleport_duration

# Copy rarity score
scoreboard players operation @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] ember_shop.rarity = @s ember_shop.rarity

# Remove local tag
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] remove NewItemDisplay
