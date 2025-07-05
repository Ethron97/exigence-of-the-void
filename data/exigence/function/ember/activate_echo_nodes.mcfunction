# Controller function to generate echo nodes

# Reset active echo nodes tag/team
execute as @e[type=armor_stand,tag=EchoNode] run function exigence:ember/node/reset

# Update base echo count based on target level (1 by default)
#   Cards may also add to these scores
execute if score Difficulty DungeonRun matches 0..1 run scoreboard players add Level1Echos DungeonRun 1
execute if score Difficulty DungeonRun matches 2 run scoreboard players add Level2Echos DungeonRun 1
execute if score Difficulty DungeonRun matches 3 run scoreboard players add Level3Echos DungeonRun 1
execute if score Difficulty DungeonRun matches 4 run scoreboard players add Level4Echos DungeonRun 1

# Move scores to data
execute store result storage exigence:echo_selection Level1Echos int 1 run scoreboard players get Level1Echos DungeonRun
execute store result storage exigence:echo_selection Level2Echos int 1 run scoreboard players get Level2Echos DungeonRun
execute store result storage exigence:echo_selection Level3Echos int 1 run scoreboard players get Level3Echos DungeonRun
execute store result storage exigence:echo_selection Level4Echos int 1 run scoreboard players get Level4Echos DungeonRun

# Choose nodes
#   Returns set of nodes from any level with the tag ChosenEchoNode
function exigence:ember/private/choose_echo_nodes_a with storage exigence:echo_selection



# Activate chosen nodes (in order)
#   I think the order is nice for compass position in inventory..? But why else?
#   So we can get rid of this restraint once we switch to the bar-locator
execute as @e[type=minecraft:armor_stand,tag=ChosenEchoNode,scores={ObjectLevel=1}] run function exigence:ember/node/activate
execute as @e[type=minecraft:armor_stand,tag=ChosenEchoNode,scores={ObjectLevel=2}] run function exigence:ember/node/activate
execute as @e[type=minecraft:armor_stand,tag=ChosenEchoNode,scores={ObjectLevel=3}] run function exigence:ember/node/activate
execute as @e[type=minecraft:armor_stand,tag=ChosenEchoNode,scores={ObjectLevel=4}] run function exigence:ember/node/activate

# Chosen echo functions
execute as @e[type=armor_stand,tag=ChosenEchoNode] at @s run function exigence:ember/node/chosen
