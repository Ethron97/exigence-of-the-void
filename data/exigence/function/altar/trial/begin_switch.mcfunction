# Called by handle_interact_trial

## CONSTRAINTS
#   AS VaultNode

#========================================================================================================

# DEBUG
#say Vault switch

execute unless entity @a[tag=Lighting,scores={VaultCode=1..6,dead=0}] run say No living player for vault

# Switch to call begin function
execute if entity @s[tag=Vault_bolt] as @p[tag=Lighting,scores={VaultCode=1,dead=0}] run function exigence:door/vault/bolt/trial/begin
execute if entity @s[tag=Vault_dune] as @p[tag=Lighting,scores={VaultCode=2,dead=0}] run function exigence:door/vault/dune/trial/begin
execute if entity @s[tag=Vault_silence] as @p[tag=Lighting,scores={VaultCode=3,dead=0}] run function exigence:door/vault/silence/trial/begin
execute if entity @s[tag=Vault_eye] as @p[tag=Lighting,scores={VaultCode=4,dead=0}] run function exigence:door/vault/eye/trial/begin
execute if entity @s[tag=Vault_spire] as @p[tag=Lighting,scores={VaultCode=5,dead=0}] run function exigence:door/vault/spire/trial/begin
execute if entity @s[tag=Vault_flow] as @p[tag=Lighting,scores={VaultCode=6,dead=0}] run function exigence:door/vault/flow/trial/begin
