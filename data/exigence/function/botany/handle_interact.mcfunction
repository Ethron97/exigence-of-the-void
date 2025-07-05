# Called from interaction

## CONSTRAINTS
#   AS BerryInteraction interaction

# ===============================================================================================================

# DEBUG
#say Altar handle

# Tag the player who interacted
execute on target run tag @s add Picking

# Store compare
scoreboard players operation #compare NodeID = @s NodeID

# Call subfunction as altar that is interacted with
execute on target run function exigence:botany/node/pick/interact

# Clear tag
execute on target run tag @s remove Picking
