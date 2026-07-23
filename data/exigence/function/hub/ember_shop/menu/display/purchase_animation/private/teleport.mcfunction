# Tp interpolation

## CONSTRAINTS
#   AS card display (or rune)

#====================================================================================================

# If rune, keep moving slightly
execute if entity @s[tag=Rune] run scoreboard players operation @s Random > 100 number

# Teleport up last distance*
execute store result entity @s item.components."minecraft:custom_data".distance double 0.0001 run scoreboard players get @s Random
function exigence:hub/ember_shop/menu/display/purchase_animation/private/teleport_macro with entity @s item.components."minecraft:custom_data"

#scoreboard players operation @s Random *= 2 number
#scoreboard players operation @s Random /= 3 number
scoreboard players operation @s Random /= 2 number
