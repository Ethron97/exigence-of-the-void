# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:block.beacon.ambient neutral @s ~ ~ ~ 7 0.6

# Reset cooldown
execute store result score @s game.player.sound_ping.vault_key_cooldown run random value 160..190
