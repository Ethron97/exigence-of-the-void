# Summon selector for difficulty 2

## CONSTRAINTS
#   AS profile display
#   AT location

#=============================================================================================================

#say Summon selector 2

# Summon display
function exigence:hub/profile_selector/menu/display/difficulty_selector/load_difficulty_selector with entity @s item.components."minecraft:custom_data"

# Team for glow color
team join Treasure @n[distance=..1,type=item_display,tag=NewItemDisplay]

# Item data
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.id set value "minecraft:slime_ball"
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_name" set value {text:"Ancient",color:"gold"}
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:lore" set value [{text:"Standard difficulty",italic:false,color:"white"}]
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".difficulty set value 2

# Teleport (so the interpolate happens)
execute as @n[distance=..5,type=item_display,tag=NewItemDisplay] run tp @s ~-0.355 ~1.4 ~

# Display item details
execute as @n[distance=..5,type=item_display,tag=NewItemDisplay] run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/private/show_all_details

# Remove local display tag
tag @n[distance=..5,type=item_display,tag=NewItemDisplay] remove NewItemDisplay
