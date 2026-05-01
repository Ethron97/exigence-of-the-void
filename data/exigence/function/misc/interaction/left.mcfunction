# Handle left click function tree
#   Called by misc/interaction/check_interaction

## CONSTRAINTS
#   AS interaction

#====================================================================================================

#say left

# Tag the player who interacted
execute on attacker run tag @s add Interacting

# Check for sub-function
execute if entity @s[tag=FunctionInteraction] run function exigence:misc/interaction/function_left

execute if entity @s[tag=BellInteract] run function exigence:bell/node/ring_resolve

# Remove local tag
execute on attacker run tag @s remove Interacting

# Remove data to reset interact detection
data remove entity @s attack
