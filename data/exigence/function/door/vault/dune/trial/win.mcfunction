# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS player

#====================================================================================================

# Teleport to vault chamber
tp @s -424.5 152.0 -1.5 90 0

# Setup pots
execute if entity @s[tag=Trial] as @e[type=minecraft:marker,tag=PotMarker,tag=dune,tag=!Crucible] at @s run function exigence:door/vault/dune/setup_pots_trial
execute if entity @s[tag=Crucible] as @e[type=minecraft:marker,tag=PotMarker,tag=dune] at @s run function exigence:door/vault/dune/setup_pots_crucible

# If game is active, give begin scores
execute if score game.is_active game.state matches 1 run scoreboard players add @s[tag=Trial] profile.data.vaults.cr.dune_trial_win 1
execute if score game.is_active game.state matches 1 run scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.dune_crucible_win 1

# Give advancement
execute if score game.is_active game.state matches 1 as @s[tag=Trial] run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"trial_dune"}
execute if score game.is_active game.state matches 1 as @s[tag=Crucible] run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"crucible_dune"}

# Reset vault
function exigence:door/vault/dune/trial/reset

# Win
function exigence:door/vault/_trial/_win
