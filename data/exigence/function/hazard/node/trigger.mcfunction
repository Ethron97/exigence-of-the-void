# Trigger hazard node

## CONSTRAINTS
#   AS hazard node

#====================================================================================================

say (D3) I am triggered

# Tag remove
tag @s remove Active
tag @s remove Setup
scoreboard players set #didnt_setup Temp 0
scoreboard players set #didnt_hazard Temp 0

# Set state to 2 and pulse node
scoreboard players set @s game.node.node_state 2
function exigence:misc/node/pulse_state

# Update scoreboard
execute if score @s node.property.object_level matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.hazard.cr.hazard_L1 1
execute if score @s node.property.object_level matches 2 run scoreboard players add @a[tag=ActivePlayer] profile.data.hazard.cr.hazard_L2 1
execute if score @s node.property.object_level matches 3 run scoreboard players add @a[tag=ActivePlayer] profile.data.hazard.cr.hazard_L3 1
execute if score @s node.property.object_level matches 4 run scoreboard players add @a[tag=ActivePlayer] profile.data.hazard.cr.hazard_L4 1
