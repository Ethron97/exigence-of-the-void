# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS player

#==================================================================================================

# Teleport to vault chamber
tp @s -344.5 152.0 6.5 -90 0

# Setup pots
execute if entity @s[tag=Trial] as @e[type=marker,tag=PotMarker,tag=eye,tag=!Crucible] at @s run function exigence:door/vault/eye/setup_pots_trial
execute if entity @s[tag=Crucible] as @e[type=marker,tag=PotMarker,tag=eye] at @s run function exigence:door/vault/eye/setup_pots_crucible

# If game is active, give begin scores
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Trial] eye_trial_win 1
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Crucible] eye_crucible_win 1

# Give advancement
execute if data storage exigence:dungeon {is_active:1} run advancement grant @s[tag=Trial] only exigence:vault/trial_eye
execute if data storage exigence:dungeon {is_active:1} run advancement grant @s[tag=Crucible] only exigence:vault/crucible_eye

# Reset vault
function exigence:door/vault/eye/trial/reset

# Win
function exigence:door/vault/_trial/_win
