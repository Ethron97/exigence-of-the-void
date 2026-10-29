# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Run revive

# Reset score
scoreboard players reset @n[type=minecraft:armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.revive

# If player not active, they probabl got kicked and we don't care
execute if entity @s[tag=!ActivePlayer] run return 0
#----------------------------------------------------------------------------------------------------

scoreboard players set @s game.player.revive_pending 1
