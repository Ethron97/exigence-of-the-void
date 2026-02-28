# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say Run timeout tutorial

# Reset score
scoreboard players reset @n[distance=..0.1,type=armor_stand,tag=PlayerNode] player.node.queue.timeout_tutorial

# Call function
tellraw @s [{text:"Exceeded Tutorial timeout limit",color:red}]
function exigence:tutorial/access/kick