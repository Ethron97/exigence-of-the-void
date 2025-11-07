# Summon specific setting display

## CONSTRAINTS
#   AT location

## INPUT:
#   INT player_id
#   INT profile_selector_id

#=============================================================================================================

$function exigence:hub/profile_selector/menu/display/settings/load/private/summon_setting_display {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}

# Get value player
scoreboard players operation @n[distance=..0.1,type=item_display,tag=NewItemDisplay] Random = @p[distance=..16,tag=ProfileSelecting] career.settings.resource_bossbar_style

# Set cycle count
tag @n[distance=..0.1,type=item_display,tag=NewItemDisplay] add Cycle
tag @n[distance=..0.1,type=item_display,tag=NewItemDisplay] add Cycle3

# Set setting display(s)
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".scoreboard set value "resource_bossbar_style"
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay,scores={Random=0}] item.components."minecraft:custom_model_data".strings set value ["cycle_3_0"]
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay,scores={Random=1}] item.components."minecraft:custom_model_data".strings set value ["cycle_3_1"]
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay,scores={Random=2}] item.components."minecraft:custom_model_data".strings set value ["cycle_3_2"]
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".display0 set value [{text:"Resource Bossbar Style: ",color:"white"},{text:"Never",color:"yellow"}]
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".display1 set value [{text:"Resource Bossbar Style: ",color:"white"},{text:"Dynamic",color:"yellow"}]
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".display2 set value [{text:"Resource Bossbar Style: ",color:"white"},{text:"Always",color:"yellow"}]

data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview0 set value {text:""}
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview1 set value [{text:"Resources Needed: ",color:"white"},{text:"3",color:"dark_green"}," ",{text:"1",color:"dark_red"}," ",{text:"0",color:"aqua"}]
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview2 set value [{text:"Resources Needed: ",color:"white"},{text:"3",color:"dark_green"}," ",{text:"1",color:"dark_red"}," ",{text:"0",color:"aqua"}]

# Overwrite hover data
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview_scale set value '0.3'
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview_hover_scale set value '0.4'
data modify entity @n[distance=..0.1,type=item_display,tag=NewItemDisplay] item.components."minecraft:custom_data".preview_shift set value '-0.01'

# Load text
execute as @n[distance=..0.1,type=item_display,tag=NewItemDisplay] at @s positioned ^0.7 ^-0.1 ^ \
run function exigence:hub/profile_selector/menu/display/settings/calls/private/show_text

# Summon preview
execute at @s positioned ~5.47 ~2.4 ~0.0 as @n[distance=..16,type=item_display,tag=NewItemDisplay] run function exigence:hub/profile_selector/menu/display/settings/calls/private/create_preview with entity @s item.components."minecraft:custom_data"

# Remove local tag
tag @n[distance=..0.1,type=item_display,tag=NewItemDisplay] remove NewItemDisplay
