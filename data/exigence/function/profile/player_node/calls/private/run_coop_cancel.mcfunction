# Called by run_queued_functions
#   Queued by try_cancel_sender

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Run queued coop cancel

# Reset score
scoreboard players reset @n[type=minecraft:armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.coop_cancel

# Call player function:
function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/cancel_sender

tag @s remove CancelledBy