# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Run timeout tutorial

# Reset score
scoreboard players reset @n[type=minecraft:armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.timeout_tutorial

# Custom kick message
#tellraw @s [{text:"Exceeded Tutorial timeout limit",color:red}]
tellraw @s [{text:"[",color:"gray"},{text:"!",color:"red"},{text:"]",color:"gray"},{text:" You were \
kicked you exceeded the timeout limit, or the room was loaded for too long.",color:"red"}]

# Kick player
function exigence:tutorial/access/kick
