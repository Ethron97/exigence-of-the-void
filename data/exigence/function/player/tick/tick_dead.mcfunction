# Called from player/tick/tick

## CONSTRAINTS
#   AS/AT ActivePlayer, score dead=2

#====================================================================================================

# If portal is open, escape dead players
execute if score game.escape_portal game.state matches 1 if entity @s[tag=!Won] run function exigence:player/game/escape

function exigence:player/stats/time/public/update_time_stats_dead