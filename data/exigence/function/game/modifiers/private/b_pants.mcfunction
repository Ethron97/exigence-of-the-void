# Called from load_modifiers_b

## CONSTRAINTS
#   AS Player wearing pants

#==================================================================================================================

## ====================== LEGGINGS ======================
# Deep Pockets
execute if predicate exigence:equipment/pants/coin_a run scoreboard players add @s game.player.mod.coin_keep 5
execute if predicate exigence:equipment/pants/coin_b run scoreboard players add @s game.player.mod.coin_keep 8
execute if predicate exigence:equipment/pants/coin_c run scoreboard players add @s game.player.mod.coin_keep 14
execute if predicate exigence:equipment/pants/coin_d run scoreboard players add @s game.player.mod.coin_keep 21
execute if predicate exigence:equipment/pants/coin_e run scoreboard players add @s game.player.mod.coin_keep 29
execute if predicate exigence:equipment/pants/coin_f run scoreboard players add @s game.player.mod.coin_keep 38

# Padded Pockets
execute if predicate exigence:equipment/pants/sherd_a run scoreboard players set @s game.player.mod.research_keep 2
execute if predicate exigence:equipment/pants/sherd_b run scoreboard players set @s game.player.mod.research_keep 4
execute if predicate exigence:equipment/pants/sherd_c run scoreboard players set @s game.player.mod.research_keep 6
execute if predicate exigence:equipment/pants/sherd_d run scoreboard players set @s game.player.mod.research_keep 10
execute if predicate exigence:equipment/pants/sherd_e run scoreboard players set @s game.player.mod.research_keep 15

# Secure Pockets
execute if predicate exigence:equipment/pants/glint_a run scoreboard players set @s game.player.mod.glint_keep 3
execute if predicate exigence:equipment/pants/glint_b run scoreboard players set @s game.player.mod.glint_keep 6
execute if predicate exigence:equipment/pants/glint_c run scoreboard players set @s game.player.mod.glint_keep 12

# Vault pockets
execute if predicate exigence:equipment/pants/vault_a run scoreboard players set @s game.player.mod.vault_keep 1
