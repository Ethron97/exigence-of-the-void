#say glimmer tick

## CONSTRAINTS
#   AS player

# Update every second to reduce tick spam
execute if score seconds.cooldown tick_counter matches 6 run function exigence:player/effects/glimmer/private/glimmer_level
