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
scoreboard players operation @n[type=item_display,tag=NewItemDisplay,distance=..0.1] Random = @p[tag=ProfileSelecting,distance=..16] career.settings.resource_actionbar_style

# Set cycle count
tag @n[type=item_display,tag=NewItemDisplay,distance=..0.1] add Cycle
tag @n[type=item_display,tag=NewItemDisplay,distance=..0.1] add Cycle3

# Set setting display(s)
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".scoreboard set value "resource_actionbar_style"
data modify entity @n[type=item_display,scores={Random=0},tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_model_data".strings set value ["cycle_3_0"]
data modify entity @n[type=item_display,scores={Random=1},tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_model_data".strings set value ["cycle_3_1"]
data modify entity @n[type=item_display,scores={Random=2},tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_model_data".strings set value ["cycle_3_2"]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".display set value [{text:"Resource Actionbar Style",color:"white"}]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".display0 set value [{text:"Resource Actionbar Style: ",color:"white"},{text:"Full",color:"yellow"}]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".display1 set value [{text:"Resource Actionbar Style: ",color:"white"},{text:"Efficient",color:"yellow"}]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".display2 set value [{text:"Resource Actionbar Style: ",color:"white"},{text:"Plain",color:"yellow"}]

data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".preview0 set value [{text:"[",color:"green"},{text:"❂",color:"dark_green"},{text:"❂❂",color:"dark_gray"},{text:"]",color:"green"}]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".preview1 set value [{text:"[",color:"green"},{text:"❂",color:"dark_green"},{text:"..",color:"dark_gray"},{text:"]",color:"green"}]
data modify entity @n[type=item_display,tag=NewItemDisplay,distance=..0.1] item.components."minecraft:custom_data".preview2 set value [{text:"1",color:"dark_green"},{text:"/",color:"dark_gray"},{text:"3",color:"gray"}]

# Load text
execute as @n[type=item_display,tag=NewItemDisplay,distance=..0.1] at @s positioned ^0.7 ^-0.1 ^ \
run function exigence:hub/profile_selector/menu/display/settings/calls/private/show_text

# Summon preview
execute at @s positioned ~5.47 ~1.6 ~ as @n[type=item_display,tag=NewItemDisplay,distance=..16] run function exigence:hub/profile_selector/menu/display/settings/calls/private/create_preview with entity @s item.components."minecraft:custom_data"

# Remove local tag
tag @n[type=item_display,tag=NewItemDisplay,distance=..0.1] remove NewItemDisplay
