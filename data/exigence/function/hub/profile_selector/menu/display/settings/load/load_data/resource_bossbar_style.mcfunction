# Set data for specific setting display

## CONSTRAINTS
#   AS setting display

#====================================================================================================

# Get value player
scoreboard players operation @s Random = @p[tag=ProfileSelecting,distance=..16] career.settings.resource_bossbar_style

# Set cycle count
tag @s add Cycle
tag @s add Cycle3

# Set setting display(s)
data modify entity @s item.components."minecraft:custom_data".scoreboard set value "resource_bossbar_style"
data modify entity @s[scores={Random=0}] item.components."minecraft:custom_model_data".strings set value ["cycle_3_0"]
data modify entity @s[scores={Random=1}] item.components."minecraft:custom_model_data".strings set value ["cycle_3_1"]
data modify entity @s[scores={Random=2}] item.components."minecraft:custom_model_data".strings set value ["cycle_3_2"]
data modify entity @s item.components."minecraft:custom_data".display set value [{text:"Resource Bossbar Style",color:"white"}]
data modify entity @s item.components."minecraft:custom_data".display0 set value [{text:"Resource Bossbar Style: ",color:"white"},{text:"Never",color:"yellow"}]
data modify entity @s item.components."minecraft:custom_data".display1 set value [{text:"Resource Bossbar Style: ",color:"white"},{text:"Dynamic",color:"yellow"}]
data modify entity @s item.components."minecraft:custom_data".display2 set value [{text:"Resource Bossbar Style: ",color:"white"},{text:"Always",color:"yellow"}]

data modify entity @s item.components."minecraft:custom_data".preview0 set value {text:""}
data modify entity @s item.components."minecraft:custom_data".preview1 set value [{text:"Resources Needed: ",color:"white"},{text:"3",color:"dark_green"}," ",{text:"1",color:"dark_red"}," ",{text:"0",color:"aqua"}]
data modify entity @s item.components."minecraft:custom_data".preview2 set value [{text:"Resources Needed: ",color:"white"},{text:"3",color:"dark_green"}," ",{text:"1",color:"dark_red"}," ",{text:"0",color:"aqua"}]

# Overwrite hover data
data modify entity @s item.components."minecraft:custom_data".preview_scale set value '0.3'
data modify entity @s item.components."minecraft:custom_data".preview_hover_scale set value '0.4'
data modify entity @s item.components."minecraft:custom_data".preview_shift set value '-0.01'

# Load text
execute as @s at @s positioned ^0.7 ^-0.1 ^ \
run function exigence:hub/profile_selector/menu/display/settings/calls/private/show_text
