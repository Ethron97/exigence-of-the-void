# Handles echo shard sounds

## CONSTRAINTS
#   AS/AT player (dead=0)
#   IF all_echos_found:0

#====================================================================================================

execute if score toggle.echo debug matches 1 if score debug.level debug matches 5.. run say (D5) Item sounds: Echo

# Decrement cooldown
scoreboard players remove @s game.player.sound_ping.echo_cooldown 1

# Playsound and reset cooldown
execute if score @s game.player.sound_ping.echo_cooldown matches 0 run function exigence:player/effects/detection/echo/try_ping_echo

# Call every second also, to catch cases where player is moving towards echo but the sound delay is too long
execute if score seconds.cooldown tick_counter matches 11 run function exigence:player/effects/detection/echo/try_ping_echo
