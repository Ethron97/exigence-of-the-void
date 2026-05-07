# Update flicker

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.ember debug matches 1 if score debug.level debug matches 5.. run say (D5) Flicker tick

# Update once per second to reduce tick spam
execute if score seconds.cooldown tick_counter matches 6 run function exigence:player/effects/flicker/private/flicker_level
