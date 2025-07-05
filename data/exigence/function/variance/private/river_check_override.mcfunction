# Called by setup_variance_finish to ensure that there is a hole in the ice

## CONSTRAINTS
#   AS VarianceNode

#=============================================================================================================

execute store result score @s NodeState run random value 1..2
function exigence:misc/node/pulse_state
