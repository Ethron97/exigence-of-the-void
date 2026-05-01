# Called from load sequence

## CONSTRAINTS
#   AS treasure node

#====================================================================================================

# Deactivate by default
tag @s remove Active

# Activate all treasure nodes on or below difficulty
execute if score @s node.property.object_level <= game.difficulty game.state run tag @s add Active
