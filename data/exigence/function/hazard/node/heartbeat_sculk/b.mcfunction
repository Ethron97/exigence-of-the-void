# Call command "b" for heartbeat flip
#   Called from hazard/node/heartbeat_sculk/flip

## CONSTRAINTS
#   AS HazardNode or VarianceNode

#=============================================================================================================

# Set nodestate to -2
scoreboard players set @s game.node.node_state -2

# Call pulse
function exigence:misc/node/pulse_state

# Remove local tag
tag @s remove BeatSculkHeart
