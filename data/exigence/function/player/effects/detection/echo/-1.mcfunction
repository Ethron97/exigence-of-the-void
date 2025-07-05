# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:block.amethyst_block.resonate neutral @s ~ ~ ~ 7 1
playsound minecraft:block.amethyst_block.resonate neutral @a[gamemode=spectator] ~ ~ ~ 7 1

# Reset cooldown
execute store result score @s PingEchoCooldown run random value 35..50
