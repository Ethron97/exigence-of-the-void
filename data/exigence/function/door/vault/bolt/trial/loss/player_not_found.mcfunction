# Called by trial node when no player found

## CONSTRAINTS
#   AS trial node

#====================================================================================================

# If the player is online though (these don't call loss)
execute if entity @s[tag=Game] as @a[tag=Game,scores={game.player.vault_code=1}] run function exigence:door/vault/bolt/trial/loss/out_of_bounds
execute if entity @s[tag=Hub] as @a[tag=Hub,scores={game.player.vault_code=1}] run function exigence:door/vault/bolt/trial/loss/out_of_bounds

# If player is not online though
function exigence:door/vault/bolt/trial/loss