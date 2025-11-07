# Summons a single text display

## CONSTRAINTS
#   AS profile display
#   AT location

## INPUT
#   INT idid

#=============================================================================================================

#say Update preview

$execute if score @s Random matches 0 run data modify entity @n[distance=..10,type=minecraft:text_display,tag=SettingPreview,scores={IDID=$(idid)}] text set from entity @s item.components."minecraft:custom_data".preview0
$execute if score @s Random matches 1 run data modify entity @n[distance=..10,type=minecraft:text_display,tag=SettingPreview,scores={IDID=$(idid)}] text set from entity @s item.components."minecraft:custom_data".preview1
$execute if score @s Random matches 2 run data modify entity @n[distance=..10,type=minecraft:text_display,tag=SettingPreview,scores={IDID=$(idid)}] text set from entity @s item.components."minecraft:custom_data".preview2
