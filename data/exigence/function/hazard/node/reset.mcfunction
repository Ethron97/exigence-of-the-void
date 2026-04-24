# Reset hazard node

## CONSTRAINTS
#   AS/AT HazardNode

#====================================================================================================

say (D3) Resetting

# Tag remove
tag @s remove NeedReset
scoreboard players set #didnt_setup Temp 0
scoreboard players set #didnt_reset Temp 0
scoreboard players set #didnt_hazard Temp 0

# Reset state to 1 (default state) and pulse
scoreboard players set @s game.node.node_state 1
function exigence:misc/node/pulse_state