# Typically called on game reset

## CONSTRAINTS
#   AS door node

#====================================================================================================

#clone -328 0 -254 -337 -9 -263 -337 20 -263 masked
fill -333 22 -257 -333 24 -257 barrier
fill -332 21 -258 -332 25 -258 barrier
fill -331 24 -259 -331 22 -259 barrier

tag @s remove ETICK

# Second layer (prevent enderpearls)
fill -331 25 -260 -331 21 -261 barrier
fill -332 21 -259 -332 25 -259 barrier
fill -333 21 -258 -333 25 -258 barrier
fill -334 21 -257 -335 25 -257 barrier