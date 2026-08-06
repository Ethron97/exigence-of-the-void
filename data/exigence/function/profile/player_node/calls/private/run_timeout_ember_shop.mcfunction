# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Run timeout ember shop

# Reset score
scoreboard players reset @n[type=minecraft:armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.timeout_ember_shop

# Call function
tellraw @s [{text:"Exceeded Ember Shop timeout limit",color:red}]
function exigence:hub/ember_shop/access/kick
