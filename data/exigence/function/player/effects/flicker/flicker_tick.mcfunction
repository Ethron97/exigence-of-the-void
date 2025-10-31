#say flicker tick

## CONSTRAINTS
#   AS player

#==============================================================================================================

# Update once per second to reduce tick spam
execute if score seconds.cooldown tick_counter matches 6 run function exigence:player/effects/flicker/private/flicker_level
