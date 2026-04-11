# Summons a single text display

## CONSTRAINTS
#   AS profile display
#   AT location

## INPUT
#   INT idid

#====================================================================================================

#say (D3) Update text

$execute if score @s Random matches 0 run data modify entity @n[type=minecraft:text_display,scores={IDID=$(idid)},tag=SettingDetails,distance=..1] text set from entity @s item.components."minecraft:custom_data".display0
$execute if score @s Random matches 1 run data modify entity @n[type=minecraft:text_display,scores={IDID=$(idid)},tag=SettingDetails,distance=..1] text set from entity @s item.components."minecraft:custom_data".display1
$execute if score @s Random matches 2 run data modify entity @n[type=minecraft:text_display,scores={IDID=$(idid)},tag=SettingDetails,distance=..1] text set from entity @s item.components."minecraft:custom_data".display2
