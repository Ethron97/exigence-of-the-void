# Summon selector for single player

## CONSTRAINTS
#   AS profile display
#   AT location

#=============================================================================================================

#say Summon multi player selector

# Summon display
function exigence:hub/profile_selector/menu/display/coop_selector/load_coop_selector with entity @s item.components."minecraft:custom_data"
tag @n[distance=..1,type=item_display,tag=NewItemDisplay] add Solo

# Team for glow color
team join Special @n[distance=..1,type=item_display,tag=NewItemDisplay]

# Item data
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_model_data".strings set value ["solo_selector"]
data modify entity @n[distance=..1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_name" set value {text:"Solo",color:"yellow"}

# Teleport (so the interpolate happens)
execute as @n[distance=..5,type=item_display,tag=NewItemDisplay] run tp @s ~-0.3 ~1.05 ~

# Display item details
execute as @n[distance=..5,type=item_display,tag=NewItemDisplay] run function exigence:hub/profile_selector/menu/display/coop_selector/calls/private/show_all_details

# Remove local display tag
tag @n[distance=..5,type=item_display,tag=NewItemDisplay] remove NewItemDisplay
