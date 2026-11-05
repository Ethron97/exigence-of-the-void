# Create team

## CONSTRAINTS
#   AS player

#====================================================================================================

execute store result storage exigence:temp x int 1 run scoreboard players get @s career.player_id
function exigence:profile/player_node/team/private/create_team_macro with storage exigence:temp
