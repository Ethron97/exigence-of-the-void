# Edge case kick handler to replace leave_tutorial function

## CONSTRAINTS
#   AS player to kick

#=============================================================================================================

# Tp back to spawn
#execute in minecraft:overworld at @e[tag=HubCenter,limit=1] run teleport @s ~ ~ ~ ~ ~
#execute in minecraft:overworld at @e[tag=HubCenter,limit=1] run spawnpoint @s ~ ~ ~
tp @s 67.54 100.00 13.48

# Give advancement? Only if they win
#advancement grant @s only exigence:story/win_difficulty_0

clear @s
tag @s remove Tutorial
team leave @s
