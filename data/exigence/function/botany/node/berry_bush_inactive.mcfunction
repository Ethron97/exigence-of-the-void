# Deactivate / reset berry node

## CONSTRAINTS
#   AS berry node

#====================================================================================================

execute if score toggle.berry debug matches 1 if score debug.level debug matches 3.. run say (D3) I am Deactivate

# Reset active tag
tag @s remove Active
tag @s remove Grown
tag @s remove Overgrown
tag @s remove FromSetup
tag @s remove PotentialGrowth
tag @s remove ETICK

# Set block at berry bush to be dead bush
execute at @s[tag=BerryNode] run setblock ~ ~ ~ dead_bush

# Clear light
execute at @s[tag=BerryNode] run setblock ~ ~1 ~ air

# Kill interaction
function exigence:botany/node/remove_interaction

# Kill glow
kill @e[type=minecraft:block_display,tag=BerryGlow,distance=..3]