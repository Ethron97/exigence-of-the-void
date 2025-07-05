# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS player

#==================================================================================================

# Teleport to vault chamber
tp @s -344.5 152.0 -9.5 -90 0

# Setup pots
execute if entity @s[tag=Trial] as @e[type=marker,tag=PotMarker,tag=spire,tag=!Crucible] at @s run function exigence:door/vault/spire/setup_pots_trial
execute if entity @s[tag=Crucible] as @e[type=marker,tag=PotMarker,tag=spire] at @s run function exigence:door/vault/spire/setup_pots_crucible

# Give scores
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Trial] spire_trial_win 1
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Crucible] spire_crucible_win 1

# Give advancement
execute if data storage exigence:dungeon {is_active:1} run advancement grant @s[tag=Trial] only exigence:vault/trial_spire
execute if data storage exigence:dungeon {is_active:1} run advancement grant @s[tag=Crucible] only exigence:vault/crucible_spire

# Reset vault
function exigence:door/vault/spire/trial/reset

# Win
function exigence:door/vault/_trial/_win
