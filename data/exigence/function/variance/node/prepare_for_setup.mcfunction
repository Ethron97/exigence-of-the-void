# Called by variance/setup_variance

## CONSTRAINTS
#   AS VarianceNode

#====================================================================================================

# Reset game.node.node_state score
scoreboard players set @s game.node.node_state 0

# Reset active tag
tag @s remove Setup
tag @s remove NeedReset

# Activate all variance nodes on or below difficulty level
execute if score @s node.property.object_level <= game.difficulty game.state run tag @s add Setup
execute if score @s node.property.object_level <= game.difficulty game.state run tag @s add NeedReset
