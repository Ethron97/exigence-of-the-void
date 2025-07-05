# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:block.amethyst_block.resonate neutral @s ~ ~ ~ 7 1.2
playsound minecraft:block.amethyst_block.resonate neutral @a[gamemode=spectator] ~ ~ ~ 7 1.2

# Reset cooldown
execute store result score @s PingEchoCooldown run random value 20..35
