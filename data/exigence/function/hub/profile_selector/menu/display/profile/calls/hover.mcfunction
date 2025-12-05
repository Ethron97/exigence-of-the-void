# Called by menu_tick -> item_display.hover

## CONSTRAINTS
#   AS item_shop_display to hover; must have "Hover" tag

## INPUT
#   WITH item.components."minecraft:custom_data" for hover_function

#=============================================================================================================

#say Hover call

# Playsound
execute at @s run playsound minecraft:block.bamboo_wood_trapdoor.open ambient @a ~ ~ ~ 1 1.2

# Display item details
execute at @s positioned ^ ^0.28 ^0 run function exigence:hub/profile_selector/menu/display/profile/calls/private/show_hover_name
execute at @s[tag=!Selected] positioned ^ ^-0.35 ^0 run function exigence:hub/profile_selector/menu/display/profile/calls/private/show_hover_line {line:0}
execute at @s[tag=!Selected] positioned ^ ^-0.48 ^0 run function exigence:hub/profile_selector/menu/display/profile/calls/private/show_hover_line {line:1}

# Scale entity
$data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0f,0f],scale:[$(hover_scale)f,$(hover_scale)f,$(hover_scale)f]}

# If another Slot Display is mid-creation, cancel it
execute at @s as @n[distance=..16,type=item_display,tag=SlotDisplay,tag=CreationProcess] run function exigence:hub/profile_selector/menu/display/profile/create_new_cancel
