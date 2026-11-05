# Called by trial.tick when win condition is met

## CONSTRAINTS
#   AS player

#====================================================================================================

# Teleport back to above trial room
#execute at @n[type=minecraft:marker,tag=TrialNode,tag=Bolt] run tp @s ~ ~13 ~
tp @s 16.5 182.0 -16.5 0 0

# Give win scores
scoreboard players add @s[tag=Trial] career.vault.bolt_trial_win 1
scoreboard players add @s[tag=Crucible] career.vault.bolt_crucible_win 1
# TODO endless
#scoreboard players add @s[tag=Endless] career.vault.bolt_endless_try 1
