# Called by menu_tick -> item_display.unhover

## CONSTRAINTS
#   AS item_shop_display to hover

## INPUT
#   WITH item.components."minecraft:custom_data" for function_unhover

#====================================================================================================

#$say Unhover (profile) (profile_selector:$(profile_selector_id) slot:$(slot_id))
#say Unhover pre button

# Remove item details
execute at @s run function exigence:hub/predungeon/menu/display/level_chooser/calls/hover/remove_hover_details with entity @s item.components."minecraft:custom_data"
