# Handle left click function tree
#   Called by misc/interaction/check_interaction

## CONSTRAINTS
#   AS interaction

#=============================================================================================================

#say left

# Check for sub-function
execute as @s[tag=FunctionInteraction] run function exigence:misc/interaction/function_left

execute as @s[tag=BellInteract] run function exigence:bell/node/ring_resolve

# Remove data to reset interact detection
data remove entity @s attack
