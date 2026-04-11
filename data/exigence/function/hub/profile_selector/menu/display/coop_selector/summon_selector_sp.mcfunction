# Summon selector for single player

## CONSTRAINTS
#   AS profile display
#   AT location

#====================================================================================================

#say (D3) Summon multi player selector

# Summon display
function exigence:hub/profile_selector/menu/display/coop_selector/load_coop_selector with entity @s item.components."minecraft:custom_data"
tag @n[type=item_display,tag=NewItemDisplay,distance=..1] add Solo

# Team for glow color
team join Special @n[type=item_display,tag=NewItemDisplay,distance=..1]

# Item data
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_model_data".strings set value ["solo_selector"]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..1] item.components."minecraft:custom_name" set value {text:"Solo",color:"yellow"}

# Teleport (so the interpolate happens)
execute as @n[type=item_display,tag=NewItemDisplay,distance=..5] run tp @s ~-0.3 ~1.05 ~

# Display item details
execute as @n[type=item_display,tag=NewItemDisplay,distance=..5] run function exigence:hub/profile_selector/menu/display/coop_selector/calls/private/show_all_details

# Remove local display tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..5] remove NewItemDisplay
