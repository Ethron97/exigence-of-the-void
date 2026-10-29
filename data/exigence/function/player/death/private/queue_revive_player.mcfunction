# Queue revive players from this player node

## CONSTRAINTS
#   AS player node

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Queue revive player (player node)

scoreboard players add @s player.node.queue 1
scoreboard players add @s player.node.queue.revive 1
