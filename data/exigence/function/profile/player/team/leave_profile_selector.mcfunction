# Make changes to team upon leaving profile selection

## CONSTRAINTS
#   AS player

#====================================================================================================

execute store result storage exigence:temp x int 1 run scoreboard players get @s career.player_id
function exigence:profile/player/team/private/leave_profile_selector_macro with storage exigence:temp
