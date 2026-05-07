# Summon a new exit portal

## CONSTRAINTS
#   AT loc

#====================================================================================================

# DEBUG
execute if score debug.level debug matches 4.. run say (D4) Summon exit node

# Summon node entity
summon minecraft:marker ~ ~ ~ {Tags:["Debug","ExitNode","NewExitNode","Node","ETICK"],CustomName:{text:"Marker | Exit"}}

# Perform data setups
execute as @n[type=minecraft:marker,tag=NewExitNode,distance=..0.1] run function exigence:game/exit/node/private/setup
