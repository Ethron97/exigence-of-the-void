# Join this player's player specific team

## CONSTRAINTS
#   AS player

#====================================================================================================

execute store result storage exigence:temp x int 1 run scoreboard players get @s career.player_id
function exigence:profile/player/team/private/join_macro with storage exigence:temp
