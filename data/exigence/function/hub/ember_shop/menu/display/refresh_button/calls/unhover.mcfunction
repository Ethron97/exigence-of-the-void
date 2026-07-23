# Called by menu_tick -> item_display.unhover

## CONSTRAINTS
#   AS item_shop_display to hover

## INPUT
#   WITH item.components."minecraft:custom_data" for function_unhover

#====================================================================================================

#$say Unhover (profile) (profile_selector:$(profile_selector_id) slot:$(slot_id))
execute if score toggle.menu debug matches 1 if score debug.level debug matches 4.. run say (D4) Unhover refresh button

#team join Yellow @s

# Override unhover's natural un-glow
#data modify entity @s Glowing set value false

# Playsound
execute at @s run playsound minecraft:item.book.page_turn ui @a ~ ~ ~ 1 1.1

# Move pupil back to rest
#execute at @s run tp @n[type=minecraft:item_display,tag=PlayerSensorPupil,distance=..0.5] ~ ~ ~-0.0325

# Remove item details
execute at @s run function exigence:hub/ember_shop/menu/display/refresh_button/calls/details/delete with entity @s item.components."minecraft:custom_data"