# Summon selector for difficulty 3

## CONSTRAINTS
#   AS profile display
#   AT location

#====================================================================================================

#say (D3) Summon selector 3

# Summon display
function exigence:hub/profile_selector/menu/display/difficulty_selector/load_difficulty_selector with entity @s item.components."minecraft:custom_data"

# Team for glow color
team join Red @n[type=item_display,tag=NewItemDisplay,distance=..1]

# Give name and lore
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.id set value "minecraft:sunflower"
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_model_data".strings set value ["difficulty_ascendant"]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_name" set value {text:"Ascendant",color:"red"}
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".reminder set value [{text:"Difficulty: ",color:"white"},{text:"Ascendant",color:"red"}]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:lore" set value [{text:"+1 Ravagers on each level",italic:false,color:"white"}]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_data".difficulty set value 3

# Teleport (so the interpolate happens)
execute as @n[type=item_display,tag=NewItemDisplay,distance=..5] run tp @s ~-0.355 ~1.8 ~

# Display item details
execute as @n[type=item_display,tag=NewItemDisplay,distance=..5] run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/private/show_all_details

# Remove local display tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..5] remove NewItemDisplay
