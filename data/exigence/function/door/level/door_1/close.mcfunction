# Typically called on game reset

## CONSTRAINTS
#   AS door node

#====================================================================================================

#clone -328 0 -254 -337 -9 -263 -337 20 -263 masked
fill -333 22 -257 -333 24 -257 barrier
fill -332 21 -258 -332 25 -258 barrier
fill -331 24 -259 -331 22 -259 barrier

tag @s remove Open

# Fix gaps from the halfslabs that you can enderpearl through
setblock -331 21 -260 barrier
setblock -332 21 -259 barrier
setblock -333 21 -258 barrier
setblock -334 21 -257 barrier

setblock -331 25 -260 barrier
setblock -332 25 -259 barrier
setblock -333 25 -258 barrier
setblock -334 25 -257 barrier