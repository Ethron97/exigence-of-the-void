# Join this player's player specific team

## CONSTRAINTS
#   AS player

## INPUT
#   STORAGE exigence:temp color

#====================================================================================================

execute store result storage exigence:temp x int 1 run scoreboard players get @s career.player_id
function exigence:profile/player/team/private/set_color_macro with storage exigence:temp
