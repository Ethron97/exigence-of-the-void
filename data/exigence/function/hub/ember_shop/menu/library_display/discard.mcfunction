# Move from displaying to discard

## CONSTRAINTS
#   AS library display (item display)

#====================================================================================================

tag @s remove ChosenCard
tag @s add Discarded

team join Hazard @s

# Remove item display from shop
execute positioned 52.5 212.0 0.5 run function exigence:hub/ember_shop/menu/library_display/calls/unload_card with entity @s item.components."minecraft:custom_data"