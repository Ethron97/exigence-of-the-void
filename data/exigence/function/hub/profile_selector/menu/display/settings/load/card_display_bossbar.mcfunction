# Summon specific setting display

## CONSTRAINTS
#   AT location

## INPUT:
#   INT player_id
#   INT profile_selector_id

#=============================================================================================================

$function exigence:hub/profile_selector/menu/display/settings/load/private/summon_setting_display {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}

# Get value player
scoreboard players operation @n[distance=..0.1,type=item_display,tag=NewItemDisplay] Random = @p[distance=..16,tag=ProfileSelecting] career.settings.card_display_bossbar

# Set type to Toggle
tag @n[distance=..0.1,type=item_display,tag=NewItemDisplay] add Toggle

# Set data
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".scoreboard set value "card_display_bossbar"
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay,scores={Random=0}] item.components."minecraft:custom_model_data".strings set value ["toggle_off"]
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay,scores={Random=1}] item.components."minecraft:custom_model_data".strings set value ["toggle_on"]
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".display0 set value {text:"Last card played bossbar"}
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".display1 set value {text:"Last card played bossbar"}
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview0 set value {text:""}
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview1 set value [{text:"Last Card: ",color:"white"},{text:"- Treasure Hunter -",color:"dark_aqua"}]
# Overwrite hover data
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview_scale set value '0.3'
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview_hover_scale set value '0.4'
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview_shift set value '-0.01'

# Load text
execute as @n[distance=..0.1,type=item_display,tag=NewItemDisplay] at @s positioned ^0.7 ^-0.1 ^ \
run function exigence:hub/profile_selector/menu/display/settings/calls/private/show_text

# Summon preview
execute at @s positioned ~5.47 ~2.5 ~0.0 as @n[distance=..16,type=item_display,tag=NewItemDisplay] run function exigence:hub/profile_selector/menu/display/settings/calls/private/create_preview with entity @s item.components."minecraft:custom_data"

# Remove local tag
tag @n[distance=..0.1,type=item_display,tag=NewItemDisplay] remove NewItemDisplay
