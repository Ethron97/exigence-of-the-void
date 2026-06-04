# called by player_alive tick every second
#   s_tick = second tick

## CONSTRAINTS
#   AS player
#       with game.player.mod.sun_plate score 5
#       AND absorbtion

#====================================================================================================

# If player has any resistance > 12 seconds, return
execute if score @s game.player.effects.resistance matches 240.. run return 1
#----------------------------------------------------------------------------------------------------

function exigence:player/effects/set_effect_time {effect:'resistance',duration:240}
