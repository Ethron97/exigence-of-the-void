# Iterative function to load #i number of runes

## CONSTRAINTS
#   AS/AT card display

## INPUT
#   #i Temp (number of runes)

#====================================================================================================

# Summon 1 rune
function exigence:hub/ember_shop/menu/display/purchase_animation/ember/summon_rune

scoreboard players remove #i Temp 1
execute if score #i Temp matches 1.. run function exigence:hub/ember_shop/menu/display/purchase_animation/ember/load_runes