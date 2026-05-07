# Called from player/tick/tick

## CONSTRAINTS
#   AS/AT ActivePlayer, score dead=2

#====================================================================================================

# If portal is open, escape dead players
#   This should be covered in detect_game_state I think
#execute if score game.escape_portal game.state matches 1 if entity @s[tag=!Won] run function exigence:game/access/escape

# Refresh spectate
spectate
execute at @s run spectate @p[tag=ActivePlayer,scores={dead=0}]

# Update time scores
function exigence:player/stats/time/public/update_time_stats_dead