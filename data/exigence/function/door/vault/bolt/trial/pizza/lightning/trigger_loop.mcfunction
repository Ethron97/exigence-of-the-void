# Iterative function that goes until hitting a block

## CONSTRAINTS
#   AT pizza/lightning marker

#====================================================================================================

# If the player was already hit, cancel
execute if score #hit_player Temp matches 1 run return 0
#----------------------------------------------------------------------------------------------------

# If player, loss
execute positioned ^ ^ ^ as @a[scores={dead=0,game.player.vault_code=1},distance=..1] run return run scoreboard players set #hit_player Temp 1
#   Make sure they can't just jump over it
execute positioned ^ ^1 ^ as @a[scores={dead=0,game.player.vault_code=1},distance=..1] run return run scoreboard players set #hit_player Temp 1
execute positioned ^ ^0.5 ^ as @a[scores={dead=0,game.player.vault_code=1},distance=..1] run return run scoreboard players set #hit_player Temp 1
#----------------------------------------------------------------------------------------------------

# If block, return
execute unless block ^ ^ ^ minecraft:air run return 1
#----------------------------------------------------------------------------------------------------

# Particle
particle electric_spark ^1 ^ ^ 0 0 0 0 1
particle electric_spark ^-1 ^ ^ 0 0 0 0 1

# Iterate
execute positioned ^ ^ ^0.1 run function exigence:door/vault/bolt/trial/pizza/lightning/trigger_loop
