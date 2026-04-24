# Called from death/died at position

## CONSTRAINTS
#   AS player

## INPUT
#   INT death_x
#   INT death_y
#   INT death_z

#====================================================================================================

$execute positioned $(death_x) $(death_y) $(death_z) align xyz positioned ~0.5 ~0.99 ~0.5 run function exigence:player/death/drop_items