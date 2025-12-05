# Summon selector for difficulty 4+

## CONSTRAINTS
#   AS profile display
#   AT location

#=============================================================================================================

#say Summon selector 4

# Summon display
function exigence:hub/profile_selector/menu/display/difficulty_selector/load_difficulty_selector with entity @s item.components."minecraft:custom_data"
tag @n[distance=..1,type=item_display,tag=NewItemDisplay] add Exigent

# Team for glow color
team join LightPurple @n[distance=..1,type=item_display,tag=NewItemDisplay]

# Give name and lore
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.id set value "minecraft:sunflower"
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_model_data".strings set value ["difficulty_exigent"]
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_name" set value {text:"Exigent",color:"light_purple"}
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".reminder set value [{text:"Difficulty: ",color:"white"},{text:"Exigent",color:"light_purple"}]
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:lore" set value [{text:"Stacking difficulty modifiers",italic:false,color:"white"}]
execute store result entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".difficulty int 1 run scoreboard players get @p[distance=..16,tag=ProfileSelecting] career.exigence_level

# Teleport (so the interpolate happens)
execute as @n[distance=..5,type=item_display,tag=NewItemDisplay] run tp @s ~-0.355 ~2.2 ~

# Display item details
execute as @n[distance=..5,type=item_display,tag=NewItemDisplay] run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/private/show_all_details

# Remove local display tag
tag @n[distance=..5,type=item_display,tag=NewItemDisplay] remove NewItemDisplay
