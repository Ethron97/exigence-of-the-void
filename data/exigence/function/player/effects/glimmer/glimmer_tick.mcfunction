# Cause nearby treasure items to glow

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

execute if score toggle.treasure debug matches 1 if score debug.level debug matches 5.. run say (D5) Glimmer tick

# Update every second to reduce tick spam
execute if score seconds.cooldown tick_counter matches 6 run function exigence:player/effects/glimmer/private/glimmer_level
