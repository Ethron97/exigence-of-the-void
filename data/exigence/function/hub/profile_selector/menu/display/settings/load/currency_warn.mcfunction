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
execute as @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] \
run function exigence:hub/profile_selector/menu/display/settings/load/load_data/currency_warn

# Remove local tag
tag @n[type=minecraft:item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay