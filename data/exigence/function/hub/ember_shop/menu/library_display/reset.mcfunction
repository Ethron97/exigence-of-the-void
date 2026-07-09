# Undiscard so it can be displayed again

## CONSTRAINTS
#   AS library display (item display)

#====================================================================================================

tag @s remove Discarded
tag @s remove ChosenCard

data modify entity @s Glowing set value false
team leave @s

# Remove item display from shop
execute positioned 52.5 212.0 0.5 run function exigence:hub/ember_shop/menu/library_display/calls/unload_card with entity @s item.components."minecraft:custom_data"