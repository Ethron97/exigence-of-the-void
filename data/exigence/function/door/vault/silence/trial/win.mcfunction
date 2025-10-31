# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS player

#==================================================================================================

# Teleport to vault chamber
tp @s -424.5 152.0 14.5 90 0

# Setup pots
execute if entity @s[tag=Trial] as @e[type=marker,tag=PotMarker,tag=silence,tag=!Crucible] at @s run function exigence:door/vault/silence/setup_pots_trial
execute if entity @s[tag=Crucible] as @e[type=marker,tag=PotMarker,tag=silence] at @s run function exigence:door/vault/silence/setup_pots_crucible

# Give scores
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Trial] profile.data.vaults.cr.silence_trial_win 1
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.silence_crucible_win 1

# Give advancement
execute if data storage exigence:dungeon {is_active:1} run advancement grant @s[tag=Trial] only exigence:vault/trial_silence
execute if data storage exigence:dungeon {is_active:1} run advancement grant @s[tag=Crucible] only exigence:vault/crucible_silence

# Reset vault
function exigence:door/vault/silence/trial/reset

# Win
function exigence:door/vault/_trial/_win
