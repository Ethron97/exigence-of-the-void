# Controls exit node/portal setup
# Called by game_on

#======================================================================================================

# Reset tags
tag @e[type=armor_stand,tag=EchoNode,tag=HasPortal] remove HasPortal

# Always create one exit
execute positioned -310.5 2.0 -102.5 run function exigence:game/exit/exit_node/summon_exit_node
# Create a second if player has BackupPlan (and difficulty 4)
execute if score BackupPlan Modifiers matches 1 if score Difficulty DungeonRun matches 4 positioned -310.5 2.0 -102.5 run function exigence:game/exit/exit_node/summon_exit_node
