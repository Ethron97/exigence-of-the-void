# Summon a new exit portal

## CONSTRAINTS
#   AT loc

#======================================================================================================

# DEBUG
say Summon exit node

# Summon node entity
summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Tags:["Debug","ExitNode","NewExitNode"],NoBasePlate:1b,NoGravity:1b,Marker:1b,CustomName:{text:"Exit"},CustomNameVisible:false}

# Perform data setups as subfunction (to reduce @e calls)
execute as @e[distance=..3,tag=NewExitNode] run function exigence:game/exit/exit_node/private/setup
