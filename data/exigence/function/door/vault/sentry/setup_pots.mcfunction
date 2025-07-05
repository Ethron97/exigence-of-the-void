# Sentry

## CONSTRAINTS
#   AS/AT marker (PotMarker,sentry)

#============================================================================================================

# Clear any existing pot
setblock ~ ~ ~ minecraft:air
# Clear any existing tags/scores
scoreboard players set @s Random 0

# Chance of a pot spawning (3/4), return if fail
execute store result score @s Random run random value 0..3
execute if score @s Random matches 0 run return 1

# Place empty pot
setblock ~ ~ ~ minecraft:decorated_pot

# Chance of pot having item (0.4)
execute store result score @s Random run random value -10..-1
execute if score @s Random matches -4.. run function exigence:vault/fill/fill_uncommon