# Handles flame/ember sounds

## CONSTRAINTS
#   AS/AT player (dead=0)
#   IF difficulty 5

#====================================================================================================

execute if score toggle.beacon debug matches 1 if score debug.level debug matches 5.. run say (D5) Item sounds: Ardor

# Decrement cooldown
scoreboard players remove @s game.player.sound_ping.flame_cooldown 1

# Playsound and reset cooldown
execute if score @s game.player.sound_ping.flame_cooldown matches 0 run function exigence:player/effects/detection/flame/try_ping_flame

# Call every second also, to catch cases where player is moving towards flame but the sound delay is too long
execute if score seconds.cooldown tick_counter matches 18 run function exigence:player/effects/detection/flame/try_ping_flame
