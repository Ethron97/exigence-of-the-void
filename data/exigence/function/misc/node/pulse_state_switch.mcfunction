# Testing using a switch instead of a macro

## CONSTRAINTS
#   AS/AT node

#====================================================================================================

#execute if score @s game.node.node_state matches 0 run return run function exigence:misc/node/pulse_state/0
execute if score @s game.node.node_state matches 1 run return run function exigence:misc/node/pulse_state/1
execute if score @s game.node.node_state matches 2 run return run function exigence:misc/node/pulse_state/2
execute if score @s game.node.node_state matches 3 run return run function exigence:misc/node/pulse_state/3
execute if score @s game.node.node_state matches 4 run return run function exigence:misc/node/pulse_state/4
execute if score @s game.node.node_state matches 5 run return run function exigence:misc/node/pulse_state/5
execute if score @s game.node.node_state matches 6 run return run function exigence:misc/node/pulse_state/6
execute if score @s game.node.node_state matches 7 run return run function exigence:misc/node/pulse_state/7
execute if score @s game.node.node_state matches 8 run return run function exigence:misc/node/pulse_state/8
execute if score @s game.node.node_state matches 9 run return run function exigence:misc/node/pulse_state/9
execute if score @s game.node.node_state matches 10 run return run function exigence:misc/node/pulse_state/10
execute if score @s game.node.node_state matches 11 run return run function exigence:misc/node/pulse_state/11
# ... etc as needed
