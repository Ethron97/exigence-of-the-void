# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say Run timeout locker room

# Reset score
scoreboard players reset @n[type=armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.timeout_locker_room

# Call function
tellraw @s [{text:"Exceeded Locker Room timeout limit",color:red}]
function exigence:hub/locker_room/access/kick