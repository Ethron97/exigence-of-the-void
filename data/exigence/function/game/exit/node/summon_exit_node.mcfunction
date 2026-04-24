# Summon a new exit portal

## CONSTRAINTS
#   AT loc

#====================================================================================================

# DEBUG
say (D3) Summon exit node

# Summon node entity
summon minecraft:marker ~ ~ ~ {Tags:["Debug","ExitNode","NewExitNode"],CustomName:{text:"Marker | Exit"}}

# Perform data setups
execute as @n[type=minecraft:marker,tag=NewExitNode,distance=..0.1] run function exigence:game/exit/node/private/setup
