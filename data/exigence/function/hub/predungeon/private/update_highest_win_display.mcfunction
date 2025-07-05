# Update displays showing health of remaining wards

## CONSTRAINTS
#   AS primary player in predungeon

#===============================================================================================================

# Move scores to data
execute store result storage exigence:temp HighestWin int 1 run scoreboard players get @s HighestWin

# Call macro
function exigence:hub/predungeon/private/update_highest_win_display_macro with storage exigence:temp

data remove storage exigence:temp HighestWin
