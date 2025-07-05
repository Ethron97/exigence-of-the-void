# silence
# Setup all pots

## CONSTRAINTS
#   AS/AT marker (PotMarker,silence)

#============================================================================================================

# Clear any existing pots
setblock ~ ~ ~ minecraft:air
# Clear any existing tags/scores
scoreboard players set @s Random 0

# Chance of a pot spawning (2/3), return if fail
execute store result score @s Random run random value 0..2
execute if score @s Random matches 0 run return 1

# Place empty pot
setblock ~ ~ ~ minecraft:decorated_pot

# Chance of pot having item (0.6)
execute store result score @s Random run random value -10..-1
execute if score @s Random matches -6.. run function exigence:vault/fill/fill_legendary
