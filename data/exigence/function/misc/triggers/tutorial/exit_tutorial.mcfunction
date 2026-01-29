# Exit tutorial

## CONSTRAINTS
#   AS player

#====================================================================================================
execute unless entity @s[tag=Tutorial] run return fail
#====================================================================================================

say Trigger exit tutorial

# TODO
# DIfferent logic based on if the player has not completed it yet. Ie skip tutorial rather than exit.
# [?] This may have been a note from before we split exit/skip?

execute if entity @s[tag=Tutorial] in exigence:tutorial run function exigence:tutorial/access/leave

# Reset trigger
scoreboard players reset @s ExitTutorial