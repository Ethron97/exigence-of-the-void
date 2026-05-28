# Call relevant vault loss

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score @s game.player.vault_code matches 1 run function exigence:door/vault/bolt/trial/loss/death
execute if score @s game.player.vault_code matches 2 run function exigence:door/vault/dune/trial/loss/death
execute if score @s game.player.vault_code matches 3 run function exigence:door/vault/silence/trial/loss/death
execute if score @s game.player.vault_code matches 4 run function exigence:door/vault/eye/trial/loss/death
execute if score @s game.player.vault_code matches 5 run function exigence:door/vault/spire/trial/loss/death
execute if score @s game.player.vault_code matches 6 run function exigence:door/vault/flow/trial/loss/death