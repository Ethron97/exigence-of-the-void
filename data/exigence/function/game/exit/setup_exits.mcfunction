# Controls exit node/portal setup

## CONSTRAINTS
#   IN overworld

#====================================================================================================
execute unless dimension minecraft:overworld run return run say (C) setup_exits not in overworld
#----------------------------------------------------------------------------------------------------
# If difficulty is not set, fail
execute if score game.difficulty game.state matches 0 run return run say (C) Difficulty invalid?
#----------------------------------------------------------------------------------------------------

# Always create one exit
execute at @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:armor_stand,tag=Start,limit=1] run function exigence:game/exit/node/summon_exit_node
# Create a second if player has BackupPlan (and difficulty 4)
execute if score mod.backup_plan game.modifiers matches 1 if score game.difficulty game.state matches 4 positioned -310.5 2.0 -102.5 run function exigence:game/exit/node/summon_exit_node
