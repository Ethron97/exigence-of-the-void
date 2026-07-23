# Any time embers to spend changes, call this

## CONSTRAINTS
#   AT ember shop node

#====================================================================================================

# Update all purchasability of all card displays
execute as @e[type=minecraft:item_display,tag=CardDisplay,tag=Displaying,distance=..5] run function exigence:hub/ember_shop/menu/display/card/calls/update_purchasability with entity @s item.components."minecraft:custom_data"

# Update bossbar
function exigence:bossbar/ember_shop/update
