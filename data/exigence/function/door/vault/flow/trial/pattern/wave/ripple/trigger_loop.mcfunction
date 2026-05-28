# Iterative function that goes until hitting a block

## CONSTRAINTS
#   AT pizza/lightning marker

#====================================================================================================

# If already hit player, return
execute if score #hit_player Temp matches 1 run return 1
#----------------------------------------------------------------------------------------------------

# If player, loss
execute positioned ^ ^ ^ if entity @a[scores={dead=0,game.player.vault_code=6},distance=..0.4] run scoreboard players set #hit_player Temp 1
#----------------------------------------------------------------------------------------------------

# If block, return
execute unless block ^ ^ ^ minecraft:air run return 1
#----------------------------------------------------------------------------------------------------

# Iterate
execute positioned ^ ^ ^0.2 run function exigence:door/vault/flow/trial/pattern/wave/ripple/trigger_loop
