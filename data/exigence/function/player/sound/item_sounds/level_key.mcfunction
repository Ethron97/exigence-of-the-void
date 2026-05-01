# Handles key sounds

## CONSTRAINTS
#   AS/AT player (dead=0)

#====================================================================================================

# Sound
scoreboard players remove @s game.player.sound_ping.key_cooldown 1

# Playsound and reset cooldown
execute if score @s game.player.sound_ping.key_cooldown matches 0 run function exigence:player/effects/detection/key/try_ping_key

# Call every second also, to catch cases where player is moving towards key but the sound delay is too long
execute if score seconds.cooldown tick_counter matches 18 run function exigence:player/effects/detection/key/try_ping_key
