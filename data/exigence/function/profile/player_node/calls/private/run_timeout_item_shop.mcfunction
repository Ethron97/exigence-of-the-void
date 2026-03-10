# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say Run timeout item shop

# Reset score
scoreboard players reset @n[distance=..0.1,type=armor_stand,tag=PlayerNode] player.node.queue.timeout_item_shop

# Call function
tellraw @s [{text:"Exceeded Item Shop timeout limit",color:red}]
function exigence:hub/item_shop/access/kick