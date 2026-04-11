# Set data for specific setting display

## CONSTRAINTS
#   AS setting display

#====================================================================================================

# Get value player
scoreboard players operation @s Random = @p[tag=ProfileSelecting,distance=..16] career.settings.return_compass

# Set type to Toggle
tag @s add Toggle

# Set data
data modify entity @s item.components."minecraft:custom_data".scoreboard set value "return_compass"
data modify entity @s[scores={Random=0}] item.components."minecraft:custom_model_data".strings set value ["toggle_off"]
data modify entity @s[scores={Random=1}] item.components."minecraft:custom_model_data".strings set value ["toggle_on"]
data modify entity @s item.components."minecraft:custom_data".display set value {text:"Give Return Compass"}
data modify entity @s item.components."minecraft:custom_data".display0 set value {text:"Give Return Compass"}
data modify entity @s item.components."minecraft:custom_data".display1 set value {text:"Give Return Compass"}

# Load text
execute as @s at @s positioned ^-0.7 ^-0.1 ^ \
run function exigence:hub/profile_selector/menu/display/settings/calls/private/show_text
