# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS player

#====================================================================================================

# Teleport to vault chamber
tp @s -344.5 152.0 -25.5 -90 0

# Setup pots
execute if entity @s[tag=Trial] as @e[type=minecraft:marker,tag=PotMarker,tag=flow,tag=!Crucible] at @s run function exigence:door/vault/flow/setup_pots_trial
execute if entity @s[tag=Crucible] as @e[type=minecraft:marker,tag=PotMarker,tag=flow] at @s run function exigence:door/vault/flow/setup_pots_crucible

# Give scores
execute if score game.is_active game.state matches 1 run scoreboard players add @s[tag=Trial] profile.data.vaults.cr.flow_trial_win 1
execute if score game.is_active game.state matches 1 run scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.flow_crucible_win 1

# Give advancement
execute if score game.is_active game.state matches 1 as @s[tag=Trial] run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"trial_flow"}
execute if score game.is_active game.state matches 1 as @s[tag=Crucible] run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"crucible_flow"}

# Reset vault
function exigence:door/vault/flow/trial/reset

# Win
function exigence:door/vault/_trial/_win
