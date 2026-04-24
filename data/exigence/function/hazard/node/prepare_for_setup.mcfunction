# Called by hazard/active_hazard_nodes

## CONSTRAINTS
#   AS HazardNode

#====================================================================================================

# Reset game.node.node_state score
scoreboard players set @s game.node.node_state 1

# Reset active tag
#   Active tag is used by proc-hazard to determine which ones are valid to randomly pick
tag @s remove Active
tag @s remove Setup
tag @s remove NeedReset

# Activate all hazard nodes on or below difficulty level
execute if score @s node.property.object_level <= game.difficulty game.state run tag @s[tag=StartingHazard] add Setup
execute if score @s node.property.object_level <= game.difficulty game.state run tag @s add NeedReset
execute if score @s node.property.object_level <= game.difficulty game.state run tag @s add Active
