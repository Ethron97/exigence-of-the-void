# Summon specific setting display

## CONSTRAINTS
#   AT location

## INPUT:
#   exigence:temp INT player_id
#   exigence:temp INT profile_selector_id

#====================================================================================================

# INPUT player_id, profile_selector_id
function exigence:hub/profile_selector/menu/display/settings/load/private/summon_setting_display

# Set data
execute as @n[type=item_display,tag=NewItemDisplay,distance=..0.1] \
run function exigence:hub/profile_selector/menu/display/settings/load/load_data/show_resource_generate

# Summon preview
execute at @s positioned ~5.47 ~1.85 ~-0.04 as @n[type=item_display,tag=NewItemDisplay,distance=..16] run function exigence:hub/profile_selector/menu/display/settings/calls/private/create_preview with entity @s item.components."minecraft:custom_data"

# Remove local tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay