# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Run timeout limbo

# Reset score
scoreboard players reset @n[type=minecraft:armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.timeout_limbo

# Call function
tellraw @s [{text:"Exceeded Limbo timeout limit",color:red}]
function exigence:hub/limbo/access/leave
execute in exigence:hub run tp @s 0.5 200.0 0.5
