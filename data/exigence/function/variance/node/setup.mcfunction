# Setup variance node

## CONSTRAINTS
#   AS/AT VarianceNode

#====================================================================================================

execute if score toggle.variance debug matches 1 if score debug.level debug matches 3.. run say (D3) Setting up

# Tag remove
tag @s remove Setup
scoreboard players set #didnt_setup Temp 0

# Generate and assign random values based on the max node state
function exigence:variance/node/randomize_node_state

# All active setups pulse based on their random value
function exigence:misc/node/pulse_state_switch
