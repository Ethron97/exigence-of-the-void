# Call when first rune in a frame pops
#   Ie, if we are double-time then don't convert both

## CONSTRAINTS
#   AS rune

## INPUT
#   STR card_name
#   INT piece_counter

#====================================================================================================

# Change to brown dye
data modify entity @s item.id set value "minecraft:brown_dye"

# Change model
$data modify entity @s item.components."minecraft:custom_model_data".strings set value ["$(card_name)_$(piece_counter)"]
