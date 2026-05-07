# Flow

## CONSTRAINTS
#   AS marker (PotMarker,flow)

## INPUT
#   INT pot_a
#   INT pot_b
#   INT pot_c

#====================================================================================================

$execute if score toggle.vault debug matches 1 if score debug.level debug matches 4.. run say (D4) Setup pot CRUCIBLE at $(pot_x) $(pot_y) $(pot_z)

$execute in minecraft:overworld positioned $(pot_x) $(pot_y) $(pot_z) run function exigence:door/vault/flow/setup/setup_pot_crucible_b