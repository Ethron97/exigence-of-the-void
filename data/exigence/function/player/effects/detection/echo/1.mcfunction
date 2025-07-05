# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:block.amethyst_block.resonate neutral @s ~ ~ ~ 7 0.6

# Reset cooldown
execute store result score @s PingEchoCooldown run random value 65..80
