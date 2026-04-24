# Called by setup_bells

## CONSTRAINTS
#   AS/AT BellNode

# ===============================================================================================================

# Deactivate bell
function exigence:bell/node/deactivate

# Reset "Random" score
scoreboard players set @s Random 0

# Activate if on active levels
#   80% to be active
execute if score @s node.property.object_level <= game.difficulty game.state store result score @s Random run random value 1..5
execute if score @s Random matches 1..4 run function exigence:bell/node/activate
