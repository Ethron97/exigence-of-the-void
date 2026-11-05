# Make changes to team upon entering profile selection

## CONSTRAINTS
#   AS player

#====================================================================================================

execute store result storage exigence:temp x int 1 run scoreboard players get @s career.player_id
function exigence:profile/player/team/private/enter_profile_selector_macro with storage exigence:temp
