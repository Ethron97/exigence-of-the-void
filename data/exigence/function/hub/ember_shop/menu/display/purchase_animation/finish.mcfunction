# Finish purchase animation

## CONSTRAINTS
#   AS/AT card display

#====================================================================================================

scoreboard players set shop.animating ember_shop 0

# Things that happen when all animations are done
# Altar fire gets put out
fill 52 210 -1 52 210 1 air replace soul_fire

# Kill any leftover runes
kill @e[type=minecraft:item_display,tag=Rune,distance=..10]
kill @e[type=minecraft:item_display,tag=Piece,distance=..10]

# The purchasing card turns into a real card
execute at @s run function exigence:hub/ember_shop/menu/display/card/give_card
kill @s
