# Summon selector for difficulty 1

## CONSTRAINTS
#   AS profile display
#   AT location

#====================================================================================================

#say (D3) Summon selector 1

# Summon display
function exigence:hub/profile_selector/menu/display/difficulty_selector/load_difficulty_selector with entity @s item.components."minecraft:custom_data"

# Team for glow color
team join Special @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1]

# Item data
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.id set value "minecraft:sunflower"
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_model_data".strings set value ["difficulty_radiant"]
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_name" set value {text:"Radiant",color:"yellow"}
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".reminder set value [{text:"Difficulty: ",color:"white"},{text:"Radiant",color:"yellow"}]
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:lore" set value [{text:"Enemies are 20% slower",italic:false,color:"white"}]
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".difficulty set value 1

# Teleport (so the interpolate happens)
execute as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..5] run tp @s ~-0.355 ~1.0 ~

# Display item details
execute as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..5] run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/private/show_all_details

# Remove local display tag
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..5] remove NewItemDisplay
