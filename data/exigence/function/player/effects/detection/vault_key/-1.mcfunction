# Called from ping echo

## CONSTRAINTS
#   AS player
#   AT echo shard

#========================================================================================================

# Playsound
playsound minecraft:block.beacon.ambient neutral @s ~ ~ ~ 7 1
playsound minecraft:block.beacon.ambient neutral @a[gamemode=spectator] ~ ~ ~ 7 1

# Reset cooldown
execute store result score @s game.player.sound_ping.vault_key_cooldown run random value 100..130
