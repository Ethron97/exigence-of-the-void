# Call as player

# set spawnpoint
spawnpoint @s -266 1 -120

# Turn tutorial on
data modify storage exigence:dungeon tutorial set value 1

# Teleport to canyon
tp @s -266.5 1.0 -120.5 -135 0

# Load tutorial
function exigence:tutorial/load

# Clear effects
effect clear @s regeneration


# Initilize steppign / messaging / handling
scoreboard players set Fallback Tutorial 1
scoreboard players set Step Tutorial 0
schedule function exigence:tutorial/step 1t

# Initialize bossbar
function exigence:bossbar/tutorial/initialize
function exigence:bossbar/resource/initialize