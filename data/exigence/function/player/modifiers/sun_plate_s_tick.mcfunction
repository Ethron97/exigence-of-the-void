# called by player_alive tick every second
#   s_tick = second tick

## CONSTRAINTS
#   AS player
#       with game.player.mod.sun_plate score 5

#================================================================================

# Give speed 11 seconds

# If player has any speed > 12 seconds, return
execute if score @s game.player.effects.speed matches 240.. run return 1

# Compare hazard score to threshhold based on player level
function exigence:player/effects/speed/set_effect_time {level:1,duration:240}
