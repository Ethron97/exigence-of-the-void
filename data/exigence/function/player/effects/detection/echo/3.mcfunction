# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:block.amethyst_block.resonate neutral @s ~ ~ ~ 7 0.4

# Reset cooldown
execute store result score @s game.player.sound_ping.echo_cooldown run random value 90..100
