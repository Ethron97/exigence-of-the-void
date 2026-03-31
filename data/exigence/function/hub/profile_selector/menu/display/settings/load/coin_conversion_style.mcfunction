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
scoreboard players operation @n[distance=..0.1,type=item_display,tag=NewItemDisplay] Random = @p[tag=ProfileSelecting,distance=..16] career.settings.coin_conversion_style

# Set type to Toggle
tag @n[distance=..0.1,type=item_display,tag=NewItemDisplay] add Toggle

# Set data
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".scoreboard set value "coin_conversion_style"
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay,scores={Random=0}] item.components."minecraft:custom_model_data".strings set value ["toggle_off"]
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay,scores={Random=1}] item.components."minecraft:custom_model_data".strings set value ["toggle_on"]
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".display set value {text:"Animate coin conversion"}
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".display0 set value {text:"Animate coin conversion"}
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".display1 set value {text:"Animate coin conversion"}

# Load text
execute as @n[distance=..0.1,type=item_display,tag=NewItemDisplay] at @s positioned ^-0.7 ^-0.1 ^ \
run function exigence:hub/profile_selector/menu/display/settings/calls/private/show_text

# Remove local tag
tag @n[distance=..0.1,type=item_display,tag=NewItemDisplay] remove NewItemDisplay
