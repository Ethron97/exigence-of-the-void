# Called by trial.tick when win condition is met

## CONSTRAINTS
#   AS player

#====================================================================================================

# Teleport back to above trial room
#execute at @n[type=minecraft:marker,tag=TrialNode,tag=Silence] run tp @s ~ ~13 ~
tp -15.5 182.0 -16.5

# Give win scores
# TODO add scoreboards for "practice" trials
#execute if score game.is_active game.state matches 1 run scoreboard players add @s[tag=Trial] profile.data.vaults.cr.silence_trial_win 1
#execute if score game.is_active game.state matches 1 run scoreboard players add @s[tag=Crucible] profile.data.vaults.cr.silence_crucible_win 1
