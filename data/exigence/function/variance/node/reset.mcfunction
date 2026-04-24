# Reset variance node

## CONSTRAINTS
#   AS/AT VarianceNode

#====================================================================================================

say (D3) Resetting

# Tag remove
tag @s remove NeedReset
scoreboard players set #didnt_setup Temp 0
scoreboard players set #didnt_reset Temp 0

# Pulse default state for all active Variance nodes
#   We need this because node state 0 wipes the changes, then the random pulse "adds" one path or the other
function exigence:misc/node/pulse_state/0
