# Set data for specific setting display

## CONSTRAINTS
#   AS setting display

#====================================================================================================

# Get value player
scoreboard players operation @s Random = @p[tag=ProfileSelecting,distance=..16] career.settings.card_display_bossbar

# Set type to Toggle
tag @s add Toggle

# Set data
data modify entity @s item.components."minecraft:custom_data".scoreboard set value "card_display_bossbar"
data modify entity @s[scores={Random=0}] item.components."minecraft:custom_model_data".strings set value ["toggle_off"]
data modify entity @s[scores={Random=1}] item.components."minecraft:custom_model_data".strings set value ["toggle_on"]
data modify entity @s item.components."minecraft:custom_data".display set value {text:"Last card played bossbar"}
data modify entity @s item.components."minecraft:custom_data".display0 set value {text:"Last card played bossbar"}
data modify entity @s item.components."minecraft:custom_data".display1 set value {text:"Last card played bossbar"}
data modify entity @s item.components."minecraft:custom_data".preview0 set value {text:""}
data modify entity @s item.components."minecraft:custom_data".preview1 set value [{text:"Last Card: ",color:"white"},{text:"- Treasure Hunter -",color:"dark_aqua"}]
# Overwrite hover data
data modify entity @s item.components."minecraft:custom_data".preview_scale set value '0.3'
data modify entity @s item.components."minecraft:custom_data".preview_hover_scale set value '0.4'
data modify entity @s item.components."minecraft:custom_data".preview_shift set value '-0.01'

# Load text
execute as @s at @s positioned ^0.7 ^-0.1 ^ \
run function exigence:hub/profile_selector/menu/display/settings/calls/private/show_text
