# Display this rarity

## CONSTRAINTS
#   AS rarity display
#   AT ember shop node

#====================================================================================================
execute if entity @s[tag=Selected] run return run say I was already selected? Cannot select
#----------------------------------------------------------------------------------------------------

# Press button into the altar
# TODO

# Tags
tag @s add Selected

# Display card displays
execute if entity @s[tag=Common] as @e[type=minecraft:item_display,tag=CardDisplay,scores={ember_shop.rarity=1},distance=..7] run function exigence:hub/ember_shop/menu/display/card/display
execute if entity @s[tag=Uncommon] as @e[type=minecraft:item_display,tag=CardDisplay,scores={ember_shop.rarity=2},distance=..7] run function exigence:hub/ember_shop/menu/display/card/display
execute if entity @s[tag=Rare] as @e[type=minecraft:item_display,tag=CardDisplay,scores={ember_shop.rarity=3},distance=..7] run function exigence:hub/ember_shop/menu/display/card/display
execute if entity @s[tag=Legendary] as @e[type=minecraft:item_display,tag=CardDisplay,scores={ember_shop.rarity=4},distance=..7] run function exigence:hub/ember_shop/menu/display/card/display
