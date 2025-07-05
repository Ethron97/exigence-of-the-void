# Handles interaction with minecraft:interaction entities

## CONSTRAINTS
#   AS Interaction

#=============================================================================================================

# Call sub function based on interaction
execute if data entity @s interaction run function exigence:misc/interaction/right
execute if data entity @s attack run function exigence:misc/interaction/left
