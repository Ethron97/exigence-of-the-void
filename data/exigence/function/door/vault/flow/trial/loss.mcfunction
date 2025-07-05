# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS player

#==================================================================================================

# Teleport to vault anti-chamber facing the vault door
tp @s -367.5 152.0 -25.5 90 0

# Reset vault
function exigence:door/vault/flow/trial/reset

# Loss
function exigence:door/vault/_trial/_loss
