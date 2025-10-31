# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:block.trial_spawner.detect_player neutral @s ~ ~ ~ 7 0.4

# Reset cooldown
execute store result score @s game.player.sound_ping.key_cooldown run random value 90..100
