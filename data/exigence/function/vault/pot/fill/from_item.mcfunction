# Call at position of pot to fill, with data from item entity

## CONSTRAINTS
#   AT position

## INPUT
#   with data from item entity

#====================================================================================================

$data merge block ~ ~ ~ {item:{id:'$(id)',count:$(count),components:$(components)}}