# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say Run timeout tutorial

# Reset score
scoreboard players reset @n[type=minecraft:armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.timeout_tutorial

# Call function
tellraw @s [{text:"Exceeded Tutorial timeout limit",color:red}]
function exigence:tutorial/access/kick