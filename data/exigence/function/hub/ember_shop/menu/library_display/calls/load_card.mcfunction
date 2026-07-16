# Load single card from library display
#   Called when this card gets marked as Loaded

## CONSTRAINTS
#   AS library display
#   AT location ("anchor" point of card shop 52.5 212.0 0.5 )

#====================================================================================================

# Summon item display
summon minecraft:item_display ~ ~ ~ {Rotation:[90.0f,0.0f],billboard:"fixed",Tags:["CardDisplay","MenuDisplay","NewItemDisplay","EmberShopDisplay","EmberShopMenuDisplay"]\
,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},CustomName:{text:"ItemDisplay | CardDisplay"}\
,teleport_duration:3,interpolation_duration:3,Glowing:false\
,item:{id:"minecraft:paper",count:1}}

# Copy item data
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item set from entity @s item

# Copy rarity score
scoreboard players operation @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] ember_shop.rarity = @s ember_shop.rarity

# Copy cost score
scoreboard players operation @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] ember_shop.cost = @s ember_shop.cost

# Add other data
#   Removes local tag
execute as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] run function exigence:hub/ember_shop/menu/library_display/calls/load_card_data
