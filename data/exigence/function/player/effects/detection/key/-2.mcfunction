# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:block.trial_spawner.detect_player neutral @s ~ ~ ~ 7 1.2
playsound minecraft:block.trial_spawner.detect_player neutral @a[gamemode=spectator] ~ ~ ~ 7 1.2

# Reset cooldown
execute store result score @s PingKeyCooldown run random value 20..35
