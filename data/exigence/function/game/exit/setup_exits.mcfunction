# Controls exit node/portal setup

## CONSTRAINTS
#   IN overworld

#====================================================================================================

# If difficulty is not set, fail
execute if score game.difficulty game.state matches 0 run return run say (C) Difficulty invalid?
#----------------------------------------------------------------------------------------------------

# Always create one exit
function exigence:game/exit/node/summon_exit_node
# Create a second if player has BackupPlan (and difficulty 4)
execute if score mod.backup_plan game.modifiers matches 1 if score game.difficulty game.state matches 4 positioned -310.5 2.0 -102.5 run function exigence:game/exit/node/summon_exit_node
