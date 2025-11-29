# Summon selector for difficulty 3

## CONSTRAINTS
#   AS profile display
#   AT location

#=============================================================================================================

#say Summon selector 3

# Summon display
function exigence:hub/profile_selector/menu/display/difficulty_selector/load_difficulty_selector with entity @s item.components."minecraft:custom_data"

# Team for glow color
team join Red @n[distance=..1,type=item_display,tag=NewItemDisplay]

# Give name and lore
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.id set value "minecraft:magma_cream"
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_name" set value {text:"Ascendant",color:"red"}
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".reminder set value [{text:"Difficulty: ",color:"white"},{text:"Ascendant",color:"red"}]
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:lore" set value [{text:"+1 Ravagers on each level",italic:false,color:"white"}]
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".difficulty set value 3

# Teleport (so the interpolate happens)
execute as @n[distance=..5,type=item_display,tag=NewItemDisplay] run tp @s ~-0.355 ~1.8 ~

# Display item details
execute as @n[distance=..5,type=item_display,tag=NewItemDisplay] run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/private/show_all_details

# Remove local display tag
tag @n[distance=..5,type=item_display,tag=NewItemDisplay] remove NewItemDisplay
