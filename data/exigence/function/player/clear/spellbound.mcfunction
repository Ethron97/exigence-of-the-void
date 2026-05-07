# Clear a single copy of the given card_name

## CONSTRAINTS
#   AS player

## INPUT
#   STR card_name

#====================================================================================================

$clear @s minecraft:carrot_on_a_stick[custom_data~{card_name:"$(card_name)"}] 1
