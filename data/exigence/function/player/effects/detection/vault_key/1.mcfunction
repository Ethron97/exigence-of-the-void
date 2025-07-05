# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:block.beacon.ambient neutral @s ~ ~ ~ 7 0.6

# Reset cooldown
execute store result score @s PingVaultKeyCooldown run random value 160..190
