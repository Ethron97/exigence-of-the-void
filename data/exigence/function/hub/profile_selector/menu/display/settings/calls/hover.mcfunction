# Called by menu_tick -> item_display.hover

## CONSTRAINTS
#   AS item_shop_display to hover; must have "Hover" tag

## INPUT
#   WITH item.components."minecraft:custom_data" for hover_function

#=============================================================================================================

#$say Hover call $(preview_hover_scale)

# Playsound
execute at @s run playsound minecraft:block.bamboo_wood_trapdoor.open ambient @a ~ ~ ~ 1 1.6

# Scale entity
$data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[$(hover_scale)f,$(hover_scale)f,$(hover_scale)f]}

# Glow preview
$execute if entity @s[tag=HasPreview] at @s as @n[distance=..10,type=text_display,tag=SettingPreview,scores={IDID=$(idid)}] run \
data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,$(preview_shift)f,0f],scale:[$(preview_hover_scale)f,$(preview_hover_scale)f,$(preview_hover_scale)f]}
