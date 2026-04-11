# Summon selector for difficulty 4+

## CONSTRAINTS
#   AS profile display
#   AT location

#====================================================================================================

#say (D3) Summon selector 4

# Summon display
function exigence:hub/profile_selector/menu/display/difficulty_selector/load_difficulty_selector with entity @s item.components."minecraft:custom_data"
tag @n[type=item_display,tag=NewItemDisplay,distance=..1] add Exigent
tag @n[type=item_display,tag=NewItemDisplay,distance=..1] add ExigentLocked

# Team for glow color
team join LightPurple @n[type=item_display,tag=NewItemDisplay,distance=..1]

# Give name and lore
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.id set value "minecraft:iron_bars"
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_name" set value {text:"Exigent",color:"light_purple"}
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:lore" set value [{text:"Beat the game to unlock",italic:false,color:"red"}]

# Teleport (so the interpolate happens)
execute as @n[type=item_display,tag=NewItemDisplay,distance=..5] run tp @s ~-0.355 ~2.2 ~

# Display item details
execute as @n[type=item_display,tag=NewItemDisplay,distance=..5] run function exigence:hub/profile_selector/menu/display/difficulty_selector/calls/private/show_all_details

# Remove local display tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..5] remove NewItemDisplay
