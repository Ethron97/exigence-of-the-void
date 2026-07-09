# Refresh the shop

# Admin function for testing

#====================================================================================================

# Discard all ChosenCard cards
#   moved to pick_ function
#execute as @e[x=30,y=200,z=-28,dx=10,dy=2,dz=54,type=minecraft:item_display,tag=LibraryDisplay,tag=ChosenCard] run function exigence:hub/ember_shop/menu/library_display/discard

# Delete item displays
# TODO

# Refresh 1 at a time to maintain tag states
# TODO: Limit by input difficulty (copy game.difficulty game.state because someone can be running the dungeon while someone is ember shopping)

#====================================================================================================
function exigence:hub/ember_shop/menu/refresh/refresh_commons
function exigence:hub/ember_shop/menu/refresh/refresh_uncommons
function exigence:hub/ember_shop/menu/refresh/refresh_rares
function exigence:hub/ember_shop/menu/refresh/refresh_legendaries