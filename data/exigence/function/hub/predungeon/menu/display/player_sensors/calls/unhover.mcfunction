# Called by menu_tick -> item_display.unhover

## CONSTRAINTS
#   AS item_shop_display to hover

## INPUT
#   WITH item.components."minecraft:custom_data" for function_unhover

#====================================================================================================

#$say (D3) Unhover (profile) (profile_selector:$(profile_selector_id) slot:$(slot_id))
#say (D3) Unhover pre button

team join Yellow @s

# Override unhover's natural un-glow
data modify entity @s Glowing set value true

# Playsound
execute at @s run playsound minecraft:block.end_portal_frame.fill ui @a ~ ~ ~ 1 0.7

# Move pupil back to rest
execute at @s run tp @n[type=minecraft:item_display,tag=PlayerSensorPupil,distance=..0.5] ~ ~ ~-0.0325

# Remove item details
#function exigence:hub/profile_selector/menu/display/profile/calls/private/remove_hover_details with entity @s item.components."minecraft:custom_data"
