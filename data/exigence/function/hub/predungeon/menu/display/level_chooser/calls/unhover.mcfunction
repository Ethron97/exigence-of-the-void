# Called by menu_tick -> item_display.unhover

## CONSTRAINTS
#   AS item_shop_display to hover

#====================================================================================================

execute if score toggle.menu debug matches 1 if score debug.level debug matches 4.. run say (D4 Menu) Unhover pre button

# Remove item details
execute at @s run function exigence:hub/predungeon/menu/display/level_chooser/calls/hover/remove_hover_details with entity @s item.components."minecraft:custom_data"
