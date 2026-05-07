# Called by handle_interact_trial

## CONSTRAINTS
#   AS VaultNode

#====================================================================================================

# DEBUG
execute if score toggle.altar debug matches 1 if score debug.level debug matches 3.. run say (D3) Vault switch

execute unless entity @a[scores={game.player.vault_code=1..6,dead=0},tag=Lighting] run say (C) No living player for vault?

## SWITCH
execute if entity @s[tag=Vault_bolt] as @p[scores={game.player.vault_code=1,dead=0},tag=Lighting] run return run function exigence:door/vault/bolt/trial/begin
execute if entity @s[tag=Vault_dune] as @p[scores={game.player.vault_code=2,dead=0},tag=Lighting] run return run function exigence:door/vault/dune/trial/begin
execute if entity @s[tag=Vault_silence] as @p[scores={game.player.vault_code=3,dead=0},tag=Lighting] run return run function exigence:door/vault/silence/trial/begin
execute if entity @s[tag=Vault_eye] as @p[scores={game.player.vault_code=4,dead=0},tag=Lighting] run return run function exigence:door/vault/eye/trial/begin
execute if entity @s[tag=Vault_spire] as @p[scores={game.player.vault_code=5,dead=0},tag=Lighting] run return run function exigence:door/vault/spire/trial/begin
execute if entity @s[tag=Vault_flow] as @p[scores={game.player.vault_code=6,dead=0},tag=Lighting] run return run function exigence:door/vault/flow/trial/begin
