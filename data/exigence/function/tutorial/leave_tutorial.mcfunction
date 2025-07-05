# Tp back to spawn
execute at @e[tag=HubCenter,limit=1] run teleport @a[tag=Tutorial] ~ ~ ~ ~ ~

execute at @e[tag=HubCenter,limit=1] run spawnpoint @a[tag=Tutorial] ~ ~ ~

# Reset tutorial
function exigence:tutorial/reset

# Give advancement
advancement grant @a[tag=Tutorial] only exigence:story/win_difficulty_0

clear @a[tag=Tutorial] #exigence:win_clear
clear @a[tag=Tutorial] #exigence:loss_clear

# Turn off
data modify storage exigence:dungeon tutorial set value 0

# Hide bossbar
function exigence:bossbar/tutorial/hide
function exigence:bossbar/resource/hide

tag @a[tag=Tutorial] remove Tutorial