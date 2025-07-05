# Checks whether player SHOULD coalesce times
# Called by player/tick/tick_alive

## CONSTRAINTS
#   AS player

#=======================================================================================================

# ONLY coalesce IF
#   1. Player has SOME speed score (and its more than a few seconds, otherwise not worth)
execute if score @s effect_speed matches ..39 run return 1
#   2. Player does NOT have speed effect (return if they do)
execute if entity @s[predicate=exigence:effects/speed] run return 1

# (Only worth doing if its more than a few seconds...)
function exigence:player/effects/speed/coalesce_times
