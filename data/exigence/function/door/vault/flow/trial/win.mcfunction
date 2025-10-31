# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS player

#==================================================================================================

# Teleport to vault chamber
tp @s -344.5 152.0 -25.5 -90 0

# Setup pots
execute if entity @s[tag=Trial] as @e[type=marker,tag=PotMarker,tag=flow,tag=!Crucible] at @s run function exigence:door/vault/flow/setup_pots_trial
execute if entity @s[tag=Crucible] as @e[type=marker,tag=PotMarker,tag=flow] at @s run function exigence:door/vault/flow/setup_pots_crucible

# Give scores
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Trial] profile.data.vaults.cr.flow_trial_win 1
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.flow_crucible_win 1

# Give advancement
execute if data storage exigence:dungeon {is_active:1} run advancement grant @s[tag=Trial] only exigence:vault/trial_flow
execute if data storage exigence:dungeon {is_active:1} run advancement grant @s[tag=Crucible] only exigence:vault/crucible_flow

# Reset vault
function exigence:door/vault/flow/trial/reset

# Win
function exigence:door/vault/_trial/_win
