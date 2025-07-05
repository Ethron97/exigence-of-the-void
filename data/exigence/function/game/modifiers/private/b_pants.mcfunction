# Called from load_modifiers_b

## CONSTRAINTS
#   AS Player wearing pants

#==================================================================================================================

## ====================== LEGGINGS ======================
# Deep Pockets
execute if predicate exigence:equipment/pants/coin_a run scoreboard players add @s mod_CoinKeep 5
execute if predicate exigence:equipment/pants/coin_b run scoreboard players add @s mod_CoinKeep 8
execute if predicate exigence:equipment/pants/coin_c run scoreboard players add @s mod_CoinKeep 14
execute if predicate exigence:equipment/pants/coin_d run scoreboard players add @s mod_CoinKeep 21
execute if predicate exigence:equipment/pants/coin_e run scoreboard players add @s mod_CoinKeep 29
execute if predicate exigence:equipment/pants/coin_f run scoreboard players add @s mod_CoinKeep 38

# Padded Pockets
execute if predicate exigence:equipment/pants/sherd_a run scoreboard players set @s mod_ResearchKeep 2
execute if predicate exigence:equipment/pants/sherd_b run scoreboard players set @s mod_ResearchKeep 4
execute if predicate exigence:equipment/pants/sherd_c run scoreboard players set @s mod_ResearchKeep 6
execute if predicate exigence:equipment/pants/sherd_d run scoreboard players set @s mod_ResearchKeep 10
execute if predicate exigence:equipment/pants/sherd_e run scoreboard players set @s mod_ResearchKeep 15

# Secure Pockets
execute if predicate exigence:equipment/pants/glint_a run scoreboard players set @s mod_GlintKeep 3
execute if predicate exigence:equipment/pants/glint_b run scoreboard players set @s mod_GlintKeep 6
execute if predicate exigence:equipment/pants/glint_c run scoreboard players set @s mod_GlintKeep 12

# Vault pockets
execute if predicate exigence:equipment/pants/vault_a run scoreboard players set @s mod_VaultKeep 1
