# Cause nearby treasure items to glow

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

#say (D3) Glimmer tick

# Update every second to reduce tick spam
execute if score seconds.cooldown tick_counter matches 6 run function exigence:player/effects/glimmer/private/glimmer_level
