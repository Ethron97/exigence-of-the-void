# Called by trial.tick when loss condition is met

## CONSTRAINTS
#   AS player

#==================================================================================================

# Teleport to vault chamber
tp @s -424.5 152.0 -17.5 90 0

# Setup pots
execute if entity @s[tag=Trial] as @e[type=marker,tag=PotMarker,tag=bolt,tag=!Crucible] at @s run function exigence:door/vault/bolt/setup_pots_trial
execute if entity @s[tag=Crucible] as @e[type=marker,tag=PotMarker,tag=bolt] at @s run function exigence:door/vault/bolt/setup_pots_crucible

# If game is active, give begin scores
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Trial] profile.data.vaults.cr.bolt_trial_win 1
execute if data storage exigence:dungeon {is_active:1} run scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.bolt_crucible_win 1

# Give advancement
execute if data storage exigence:dungeon {is_active:1} run advancement grant @s[tag=Trial] only exigence:vault/trial_bolt
execute if data storage exigence:dungeon {is_active:1} run advancement grant @s[tag=Crucible] only exigence:vault/crucible_bolt

# Reset vault
function exigence:door/vault/bolt/trial/reset

# Win
function exigence:door/vault/_trial/_win

