# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#====================================================================================================

# Playsound
playsound minecraft:entity.evoker.cast_spell neutral @s ~ ~ ~ 7 1.2
playsound minecraft:entity.evoker.cast_spell neutral @a[gamemode=spectator] ~ ~ ~ 7 1.2

# Reset cooldown
execute store result score @s game.player.sound_ping.echo_cooldown run random value 20..35
