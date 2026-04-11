# Called by menu_tick -> item_display.unhover

## CONSTRAINTS
#   AS item_shop_display to hover

## INPUT
#   WITH item.components."minecraft:custom_data" for function_unhover

#====================================================================================================

#say (D3) Unhover (settings)

# Unscale entity
$data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[$(scale)f,$(scale)f,$(scale)f]}

# Unglow preview
$execute if entity @s[tag=HasPreview] at @s as @n[type=text_display,scores={IDID=$(idid)},tag=SettingPreview,distance=..10] run \
data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[$(preview_scale)f,$(preview_scale)f,$(preview_scale)f]}
