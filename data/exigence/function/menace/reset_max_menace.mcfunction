# Call from game off

# Update storage
data modify storage exigence:dungeon max_menace set value 0

# Enable red vinette
worldborder warning distance 0

# Un-Redify sculk
function exigence:menace/private/transform_sculk {redify:0}

# Set bossbar back to white
bossbar set exigence:bossbar color white

# Disallow ravagers up certain areas
## Cherry tree cave
setblock -342 14 -253 minecraft:cyan_terracotta
setblock -356 7 -215 minecraft:air

## Canyon wall above fountain house roofs
setblock -355 15 -177 minecraft:blue_terracotta

## Broken library sculk stack for roof access
fill -335 10 -238 -335 12 -238 air

## Staircase red house roof access
setblock -323 16 -239 air