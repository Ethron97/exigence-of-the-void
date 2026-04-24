# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS player

#====================================================================================================

# Teleport to vault chamber
tp @s -344.5 152.0 6.5 -90 0

# Setup pots
execute if entity @s[tag=Trial] as @e[type=minecraft:marker,tag=PotMarker,tag=eye,tag=!Crucible] at @s run function exigence:door/vault/eye/setup_pots_trial
execute if entity @s[tag=Crucible] as @e[type=minecraft:marker,tag=PotMarker,tag=eye] at @s run function exigence:door/vault/eye/setup_pots_crucible

# If game is active, give begin scores
execute if score game.is_active game.state matches 1 run scoreboard players add @s[tag=Trial] profile.data.vaults.cr.eye_trial_win 1
execute if score game.is_active game.state matches 1 run scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.eye_crucible_win 1

# Give advancement
execute if score game.is_active game.state matches 1 as @s[tag=Trial] run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"trial_eye"}
execute if score game.is_active game.state matches 1 as @s[tag=Crucible] run function exigence:profile/profile_node/set/shop_unlock_vault {vault_string:"crucible_eye"}

# Reset vault
function exigence:door/vault/eye/trial/reset

# Win
function exigence:door/vault/_trial/_win
