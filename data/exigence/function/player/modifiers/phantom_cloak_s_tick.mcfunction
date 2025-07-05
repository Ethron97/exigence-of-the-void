# called by player_alive tick every second
#   s_tick = second tick

## CONSTRAINTS
#   AS player
#       with mod_PhantomScales score 7 (phantom cloak chestplate)

#================================================================================

# If player does not have invisibility, return
execute unless entity @s[predicate=exigence:effects/invis] run return 1

# If player has speed2 > 12 seconds, return
execute if score @s effect_speed2 matches 240.. run return 1

# Compare hazard score to threshhold based on player level
function exigence:player/effects/speed/set_effect_time {level:2,duration:240}
