# Called by setup_bells

## CONSTRAINTS
#   AS/AT BellNode

#====================================================================================================

execute if score toggle.bell debug matches 1 if score debug.level debug matches 3.. run say (D3) I am a bell setting up

# Deactivate bell
function exigence:bell/node/deactivate

# Reset "Random" score
scoreboard players set @s Random 0

# Activate if on active levels
#   80% to be active
execute if score @s node.property.object_level <= game.difficulty game.state store result score @s Random run random value 1..5
execute if score @s Random matches 1..4 run function exigence:bell/node/activate
