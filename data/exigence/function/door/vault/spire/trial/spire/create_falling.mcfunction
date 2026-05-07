# Spread new block within 3 blocks
#   Kicks off iterative attempts

## CONSTRAINTS
#   AS spire marker that has NewSpire

#====================================================================================================

# DEBUG
execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Spire to spire

# Get new random spread
function exigence:door/vault/spire/trial/spire/random_spread

# Create falling
function exigence:door/vault/spire/trial/spire/new with storage exigence:trial
