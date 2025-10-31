# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:entity.evoker.cast_spell neutral @s ~ ~ ~ 7 0.6

# Reset cooldown
execute store result score @s game.player.sound_ping.flame_cooldown run random value 65..80
