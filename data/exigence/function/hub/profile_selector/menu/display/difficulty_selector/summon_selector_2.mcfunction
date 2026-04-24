# Summon selector for difficulty 2

## CONSTRAINTS
#   AS profile display
#   AT location

#====================================================================================================

#say (D3) Summon selector 2

# Summon display
function exigence:hub/profile_selector/menu/display/difficulty_selector/load_difficulty_selector with entity @s item.components."minecraft:custom_data"

# Team for glow color
team join Treasure @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1]

# Item data
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.id set value "minecraft:sunflower"
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_model_data".strings set value ["difficulty_ancient"]
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_name" set value {text:"Ancient",color:"gold"}
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".reminder set value [{text:"Difficulty: ",color:"white"},{text:"Ancient",color:"gold"}]
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:lore" set value [{text:"Standard difficulty",italic:false,color:"white"}]
data modify entity @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".difficulty set value 2

# Teleport (so the interpolate happens)
execute as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..5] run tp @s ~-0.355 ~1.4 ~

# Display item details
execute as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..5] run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/private/show_all_details

# Remove local display tag
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..5] remove NewItemDisplay
