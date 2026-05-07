# Called from death/died at position

## CONSTRAINTS
#   AS player

## INPUT
#   INT death_x
#   INT death_y
#   INT death_z

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) Died at...

$execute positioned $(death_x) $(death_y) $(death_z) align xyz positioned ~0.5 ~0.99 ~0.5 run function exigence:player/death/died/drop_items