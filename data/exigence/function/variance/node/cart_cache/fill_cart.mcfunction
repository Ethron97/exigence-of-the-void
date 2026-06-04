# Setup cart cache cart
# Called by in-game command blocks when variance node pulses state -1

## CONSTRAINTS
#   AT location (middle center of cart)

#====================================================================================================

# Fill the pots around given location
execute positioned ~1 ~ ~-1 run function exigence:variance/node/cart_cache/fill_pot
execute positioned ~1 ~ ~ run function exigence:variance/node/cart_cache/fill_pot
execute positioned ~1 ~ ~1 run function exigence:variance/node/cart_cache/fill_pot
execute positioned ~-1 ~ ~-1 run function exigence:variance/node/cart_cache/fill_pot
execute positioned ~-1 ~ ~ run function exigence:variance/node/cart_cache/fill_pot
execute positioned ~-1 ~ ~1 run function exigence:variance/node/cart_cache/fill_pot
execute positioned ~ ~ ~1 run function exigence:variance/node/cart_cache/fill_pot
execute positioned ~ ~ ~-1 run function exigence:variance/node/cart_cache/fill_pot

# Summon waypoint entity
function exigence:variance/node/cart_cache/summon_cart_waypoint