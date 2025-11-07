# Summon specific setting display

## CONSTRAINTS
#   AT location

## INPUT:
#   INT player_id
#   INT profile_selector_id

#=============================================================================================================

$function exigence:hub/profile_selector/menu/display/settings/load/private/summon_setting_display {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}

# Get value player
scoreboard players operation @n[distance=..0.1,type=item_display,tag=NewItemDisplay] Random = @p[distance=..16,tag=ProfileSelecting] career.settings.ravager_glass_break

# Set type to Toggle
tag @n[distance=..0.1,type=item_display,tag=NewItemDisplay] add Toggle

# Set data
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".scoreboard set value "ravager_glass_break"
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay,scores={Random=0}] item.components."minecraft:custom_model_data".strings set value ["toggle_off"]
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay,scores={Random=1}] item.components."minecraft:custom_model_data".strings set value ["toggle_on"]
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".display0 set value {text:"Ravager glass break sound"}
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".display1 set value {text:"Ravager glass break sound"}

# Load text
execute as @n[distance=..0.1,type=item_display,tag=NewItemDisplay] at @s positioned ^-0.7 ^-0.1 ^ \
run function exigence:hub/profile_selector/menu/display/settings/calls/private/show_text

# Remove local tag
tag @n[distance=..0.1,type=item_display,tag=NewItemDisplay] remove NewItemDisplay
