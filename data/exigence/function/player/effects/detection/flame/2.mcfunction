# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:entity.evoker.cast_spell neutral @s ~ ~ ~ 7 0.5

# Reset cooldown
execute store result score @s PingFlameCooldown run random value 80..90
