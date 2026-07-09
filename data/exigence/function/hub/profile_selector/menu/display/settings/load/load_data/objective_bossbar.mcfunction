# Set data for specific setting display

## CONSTRAINTS
#   AS setting display

#====================================================================================================

# Get value player
scoreboard players operation @s Random = @p[tag=ProfileSelecting,distance=..16] career.settings.objective_bossbar

# Set type to Toggle
tag @s add Toggle

# Set data
data modify entity @s item.components."minecraft:custom_data".scoreboard set value "objective_bossbar"
data modify entity @s[scores={Random=0}] item.components."minecraft:custom_model_data".strings set value ["toggle_off"]
data modify entity @s[scores={Random=1}] item.components."minecraft:custom_model_data".strings set value ["toggle_on"]
data modify entity @s item.components."minecraft:custom_data".display set value {text:"Cost/Objective bossbar"}
data modify entity @s item.components."minecraft:custom_data".display0 set value {text:"Cost/Objective bossbar"}
data modify entity @s item.components."minecraft:custom_data".display1 set value {text:"Cost/Objective bossbar"}
data modify entity @s item.components."minecraft:custom_data".preview0 set value {text:""}
data modify entity @s item.components."minecraft:custom_data".preview1 set value \
[{text:"Cost: ",color:"gray"},{text:"3",color:"dark_green"}," ",{text:"1",color:"dark_red"}," ",{text:"0",color:"aqua"},{text:"  |  ",color:"dark_gray"}\
,{text:"Objectives: ",color:"gray"},{text:"[",color:"#2070a5"},{sprite:"exigence:item/level_1_key",atlas:"items",color:"white"}\
,{sprite:"exigence:item/door_lock_b",atlas:"items",color:"white"},{text:"]",color:"#2070a5"},{text:" [",color:"#18aa24"},{sprite:"minecraft:item/echo_shard",atlas:"items",color:"white"},{text:"]",color:"#18aa24"}]
# Overwrite hover data
data modify entity @s item.components."minecraft:custom_data".preview_scale set value '0.3'
data modify entity @s item.components."minecraft:custom_data".preview_hover_scale set value '0.4'
data modify entity @s item.components."minecraft:custom_data".preview_shift set value '-0.01'

# Load text
execute as @s at @s positioned ^0.7 ^-0.1 ^ \
run function exigence:hub/profile_selector/menu/display/settings/calls/private/show_text
