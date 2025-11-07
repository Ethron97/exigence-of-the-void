# Summons a single text display

## CONSTRAINTS
#   AS profile display
#   AT location

## INPUT
#   INT idid

#=============================================================================================================

#say Update text

$execute if score @s Random matches 0 run data modify entity @n[distance=..1,type=minecraft:text_display,tag=SettingDetails,scores={IDID=$(idid)}] text set from entity @s item.components."minecraft:custom_data".display0
$execute if score @s Random matches 1 run data modify entity @n[distance=..1,type=minecraft:text_display,tag=SettingDetails,scores={IDID=$(idid)}] text set from entity @s item.components."minecraft:custom_data".display1
$execute if score @s Random matches 2 run data modify entity @n[distance=..1,type=minecraft:text_display,tag=SettingDetails,scores={IDID=$(idid)}] text set from entity @s item.components."minecraft:custom_data".display2
