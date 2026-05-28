# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Run kick vault

# Reset score
scoreboard players reset @n[type=minecraft:armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.vault_loss

# Teleport
execute if entity @s[tag=Game] in minecraft:overworld run tp @s -384.5 152.0 -11.5
execute if entity @s[tag=Hub] in exigence:hub run tp @s 0.50 183.00 7.50 180 0

# Call function
tellraw @s [{text:"[!] ",color:"red"},{text:"Cause of failure: ",color:"gray"},{text:"Cowardice ",color:"red"},{text:"(Logged out)",color:"dark_gray"}]
function exigence:door/vault/_trial/_loss
