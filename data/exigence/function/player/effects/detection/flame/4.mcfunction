# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:entity.evoker.cast_spell neutral @s ~ ~ ~ 7 0.3

# Reset cooldown
execute store result score @s PingFlameCooldown run random value 100..110
