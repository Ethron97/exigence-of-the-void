# Move to displaying

## CONSTRAINTS
#   AS library display (item display)

#====================================================================================================

tag @s add ChosenCard

data modify entity @s Glowing set value true
team join Green @s

# Load shop display
execute positioned 52.5 212.0 0.5 run function exigence:hub/ember_shop/menu/library_display/calls/load_card