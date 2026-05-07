# Set data for specific setting display

## CONSTRAINTS
#   AS setting display

#====================================================================================================

# Get value player
scoreboard players operation @s Random = @p[tag=ProfileSelecting,distance=..16] career.settings.coin_conversion_style

# Set cycle count
tag @s add Cycle
tag @s add Cycle3

# Set data
data modify entity @s item.components."minecraft:custom_data".scoreboard set value "coin_conversion_style"
data modify entity @s[scores={Random=0}] item.components."minecraft:custom_model_data".strings set value ["cycle_3_0"]
data modify entity @s[scores={Random=1}] item.components."minecraft:custom_model_data".strings set value ["cycle_3_1"]
data modify entity @s[scores={Random=2}] item.components."minecraft:custom_model_data".strings set value ["cycle_3_2"]
data modify entity @s item.components."minecraft:custom_data".display set value [{text:"Coin Conversion Style",color:"white"}]
data modify entity @s item.components."minecraft:custom_data".display0 set value [{text:"Coin Conversion Style: ",color:"white"},{text:"Instant",color:"yellow"}]
data modify entity @s item.components."minecraft:custom_data".display1 set value [{text:"Coin Conversion Style: ",color:"white"},{text:"Quick",color:"yellow"}]
data modify entity @s item.components."minecraft:custom_data".display2 set value [{text:"Coin Conversion Style: ",color:"white"},{text:"Slow",color:"yellow"}]

# Load text
execute as @s at @s positioned ^-0.7 ^-0.1 ^ \
run function exigence:hub/profile_selector/menu/display/settings/calls/private/show_text
