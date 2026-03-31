# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say Run timeout predungeon

# Reset score
scoreboard players reset @n[type=armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.timeout_predungeon

# Call function
tellraw @s [{text:"Exceeded Predungeon timeout limit",color:red}]
function exigence:hub/predungeon/access/kick