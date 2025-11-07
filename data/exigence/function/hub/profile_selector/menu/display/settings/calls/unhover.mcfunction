# Called by menu_tick -> item_display.unhover

## CONSTRAINTS
#   AS item_shop_display to hover

## INPUT
#   WITH item.components."minecraft:custom_data" for function_unhover

#=============================================================================================================

#say Unhover

# Unscale entity
$data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[$(scale)f,$(scale)f,$(scale)f]}

# Unglow preview
$execute if entity @s[tag=HasPreview] at @s as @n[distance=..10,type=text_display,tag=SettingPreview,scores={IDID=$(idid)}] run \
data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[$(preview_scale)f,$(preview_scale)f,$(preview_scale)f]}
