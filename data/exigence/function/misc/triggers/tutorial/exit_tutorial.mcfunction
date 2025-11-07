# Exit tutorial

## CONSTRAINTS
#   AS player

#=============================================================================================================

# TODO
# DIfferent logic based on if the player has not completed it yet. Ie skip tutorial rather than exit.

execute if entity @s[tag=Tutorial] in exigence:tutorial run function exigence:tutorial/access/leave_tutorial

# Reset trigger score
scoreboard players set @s ExitTutorial 0
# If tag is tutorial, reactivate
execute if entity @s[tag=Tutorial] run scoreboard players enable @s ExitTutorial
