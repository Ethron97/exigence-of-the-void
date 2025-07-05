# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:block.beacon.ambient neutral @s ~ ~ ~ 7 0.5

# Reset cooldown
execute store result score @s PingVaultKeyCooldown run random value 190..220
