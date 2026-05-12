# Handles vault key sounds

## CONSTRAINTS
#   AS/AT player (dead=0)

#====================================================================================================

execute if score toggle.vault debug matches 1 if score debug.vault debug matches 5.. run say (D5) Item sounds: Vault

# Decrement cooldown
scoreboard players remove @s game.player.sound_ping.vault_key_cooldown 1

# Playsound and reset cooldown
execute if score @s game.player.sound_ping.vault_key_cooldown matches 0 run function exigence:player/effects/detection/vault_key/ping_vault_key

# Call every second also, to catch cases where player is moving towards key but the sound delay is too long
execute if score seconds.cooldown tick_counter matches 17 run function exigence:player/effects/detection/vault_key/ping_vault_key
