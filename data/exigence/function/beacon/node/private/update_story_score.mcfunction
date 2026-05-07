# Update story score based on light status

## CONSTRAINTS
#   AS beacon node

#====================================================================================================

execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Update story scores

## SWITCH
execute if score @s node.property.object_level matches 1 run return run scoreboard players operation beacon.1 game.story.beacons = @s game.node.node_state
execute if score @s node.property.object_level matches 2 run return run scoreboard players operation beacon.2 game.story.beacons = @s game.node.node_state
execute if score @s node.property.object_level matches 3 run return run scoreboard players operation beacon.3 game.story.beacons = @s game.node.node_state
execute if score @s node.property.object_level matches 4 run return run scoreboard players operation beacon.4 game.story.beacons = @s game.node.node_state