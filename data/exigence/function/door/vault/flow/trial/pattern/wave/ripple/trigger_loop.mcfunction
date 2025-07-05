# Iterative function that goes until hitting a block

## CONSTRAINTS
#   AT pizza/lightning marker

#==================================================================================================

# If player, loss
execute positioned ^ ^ ^ as @a[tag=ActivePlayer,scores={dead=0,VaultCode=6},distance=..0.4] run function exigence:door/vault/flow/trial/loss

#particle minecraft:end_rod ^ ^ ^

# If block, return
execute unless block ^ ^ ^ minecraft:air run return 1

# Iterate
execute positioned ^ ^ ^0.2 run function exigence:door/vault/flow/trial/pattern/wave/ripple/trigger_loop
