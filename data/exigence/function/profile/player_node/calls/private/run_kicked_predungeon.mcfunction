# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say (D3) Run kicked predungeon

# Reset score
scoreboard players reset @n[type=minecraft:armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.kicked_predungeon

# Call function
function exigence:hub/predungeon/access/kick