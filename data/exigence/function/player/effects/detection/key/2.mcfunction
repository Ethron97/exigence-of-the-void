# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:block.trial_spawner.detect_player neutral @s ~ ~ ~ 7 0.5

# Reset cooldown
execute store result score @s PingKeyCooldown run random value 80..90
