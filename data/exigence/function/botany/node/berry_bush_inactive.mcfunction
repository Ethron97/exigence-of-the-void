#say I am Deactivate

# Reset active tag
tag @s remove Active
tag @s remove Grown
tag @s remove Overgrown
tag @s remove FromSetup

# Set block at berry bush to be dead bush
execute at @s run setblock ~ ~ ~ dead_bush

# Clear light
execute at @s[tag=BerryNode] run setblock ~ ~1 ~ air

# Kill interaction
function exigence:botany/node/remove_interaction
