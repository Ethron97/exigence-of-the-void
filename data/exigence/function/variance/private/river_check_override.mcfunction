# Called by setup_variance_finish to ensure that there is a hole in the ice

## CONSTRAINTS
#   AS VarianceNode

#=============================================================================================================

execute store result score @s game.node.node_state run random value 1..2
function exigence:misc/node/pulse_state
