# Call command "a" for heartbeat flip
#   Called from hazard/node/heartbeat_sculk/flip

## CONSTRAINTS
#   AS HazardNode or VarianceNode

#=============================================================================================================

# Set nodestate to -1
scoreboard players set @s NodeState -1

# Call pulse
function exigence:misc/node/pulse_state

# Remove local tag
tag @s remove BeatSculkHeart
