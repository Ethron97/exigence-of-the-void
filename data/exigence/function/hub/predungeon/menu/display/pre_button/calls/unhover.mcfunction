# Called by menu_tick -> item_display.unhover

## CONSTRAINTS
#   AS item_shop_display to hover

## INPUT
#   WITH item.components."minecraft:custom_data" for function_unhover

#====================================================================================================

#$say Unhover (profile) (profile_selector:$(profile_selector_id) slot:$(slot_id))
execute if score debug.level debug matches 4.. run say (D4) Unhover pre button

# Remove item details
execute at @s run function exigence:hub/predungeon/menu/display/pre_button/calls/hover/remove_hover_details with entity @s item.components."minecraft:custom_data"
