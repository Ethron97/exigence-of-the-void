# Called from altar/activate_altar_nodes at game_on

## CONSTRAINTS
# AS AltarNode

#==============================================================================================================

# Clone built altar from prebuilds
execute at @s[tag=!Crucible] run clone -390 -43 -119 -388 -42 -117 ~-1 ~-1 ~-1
execute at @s[tag=Crucible] run clone -394 -43 -119 -392 -42 -117 ~-1 ~-1 ~-1

# Summon interaction
function exigence:altar/node/setup_interaction

# Set block to unlit campfire
execute at @s run setblock ~ ~ ~ minecraft:soul_campfire[lit=false]

# Set NodeState to 0
scoreboard players set @s NodeState 0
