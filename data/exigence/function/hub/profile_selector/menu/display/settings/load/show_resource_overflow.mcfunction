# Summon specific setting display

## CONSTRAINTS
#   AT location

## INPUT:
#   exigence:temp INT player_id
#   exigence:temp INT profile_selector_id

#====================================================================================================

# INPUT player_id, profile_selector_id
function exigence:hub/profile_selector/menu/display/settings/load/private/summon_setting_display

# Get value player
scoreboard players operation @n[type=item_display,tag=NewItemDisplay,distance=..0.1] Random = @p[tag=ProfileSelecting,distance=..16] career.settings.show_resource_overflow

# Set type to Toggle
tag @n[type=item_display,tag=NewItemDisplay,distance=..0.1] add Toggle

# Set data
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".scoreboard set value "show_resource_overflow"
data modify entity @n[type=item_display,scores={Random=0},tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_model_data".strings set value ["toggle_off"]
data modify entity @n[type=item_display,scores={Random=1},tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_model_data".strings set value ["toggle_on"]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".display set value {text:"Notify resource overflowed"}
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".display0 set value {text:"Notify resource overflowed"}
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".display1 set value {text:"Notify resource overflowed"}
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".preview0 set value {text:""}
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".preview1 set value {text:"∴",color:"dark_green"}

# Load text
execute as @n[type=item_display,tag=NewItemDisplay,distance=..0.1] at @s positioned ^-0.7 ^-0.1 ^ \
run function exigence:hub/profile_selector/menu/display/settings/calls/private/show_text

# Summon preview
execute at @s positioned ~5.47 ~1.85 ~0.04 as @n[type=item_display,tag=NewItemDisplay,distance=..16] run function exigence:hub/profile_selector/menu/display/settings/calls/private/create_preview with entity @s item.components."minecraft:custom_data"

# Remove local tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay
