# Called from interaction

## CONSTRAINTS
#   AS BerryInteraction interaction

# ===============================================================================================================

# DEBUG
execute if score toggle.berry debug matches 1 if score debug.level debug matches 3.. run say (D3) Berry handle interact

# Tag the player who interacted
execute on target run tag @s add Picking

# Store compare
scoreboard players operation #compare node.id = @s game.interaction.node.id

# Call subfunction as altar that is interacted with
execute on target run function exigence:botany/node/pick/interact

# Clear tag
execute on target run tag @s remove Picking
