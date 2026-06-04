# Check if all pots are looted
#   For waypoint

## CONSTRAINTS
#   AT location

## RETURNS
#   false if all pots are gone

#====================================================================================================

# Return true if any pot is there
execute if block ~1 ~ ~-1 minecraft:decorated_pot run return 1
execute if block ~1 ~ ~ minecraft:decorated_pot run return 1
execute if block ~1 ~ ~1 minecraft:decorated_pot run return 1
execute if block ~-1 ~ ~-1 minecraft:decorated_pot run return 1
execute if block ~-1 ~ ~ minecraft:decorated_pot run return 1
execute if block ~-1 ~ ~1 minecraft:decorated_pot run return 1
execute if block ~ ~ ~1 minecraft:decorated_pot run return 1
execute if block ~ ~ ~-1 minecraft:decorated_pot run return 1

# Return pots gone
return 0