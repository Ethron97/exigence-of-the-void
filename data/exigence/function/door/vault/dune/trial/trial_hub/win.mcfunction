# Called by trial.tick when win condition is met

## CONSTRAINTS
#   AS player

#====================================================================================================

# Teleport back to above trial room
#execute at @n[type=minecraft:marker,tag=TrialNode,tag=Dune] run tp @s ~ ~13 ~
tp 0.5 182.0 -16.5

# Give win scores
# TODO add scoreboards for "practice" trials
#execute if score game.is_active game.state matches 1 run scoreboard players add @s[tag=Trial] profile.data.vaults.cr.dune_trial_win 1
#execute if score game.is_active game.state matches 1 run scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.dune_crucible_win 1
