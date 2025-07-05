## CONSTRAINTS
#   AS altarnode

#==============================================================================================================

# Remove interaction
function exigence:altar/node/remove_interaction

# Set block to unlit campfire
execute at @s run setblock ~ ~ ~ minecraft:soul_campfire[lit=false]

# Set NodeState to -1
scoreboard players set @s NodeState -1
