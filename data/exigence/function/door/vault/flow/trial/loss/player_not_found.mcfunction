# Called by trial node when no player found

## CONSTRAINTS
#   AS trial node

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 5.. run say (D5 Trial) PLayer not found

# If the player is online though (these don't call loss)
execute if entity @s[tag=Game] as @a[tag=Game,scores={game.player.vault_code=6}] run function exigence:door/vault/flow/trial/loss/out_of_bounds
execute if entity @s[tag=Hub] as @a[tag=Hub,scores={game.player.vault_code=6}] run function exigence:door/vault/flow/trial/loss/out_of_bounds

# If player is not online though
function exigence:door/vault/flow/trial/loss