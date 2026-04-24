# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say Run chest wait over

# Reset score
scoreboard players reset @n[type=minecraft:armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.chest_wait_over

# Call player function:
function exigence:profile/player/inform_chest_wait_over