# Called by run_queued_functions
#   Queued by try_cancel_sender

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say Run queued coop cancel

# Reset score
scoreboard players reset @n[distance=..0.1,type=armor_stand,tag=PlayerNode] player.node.queue.coop_cancel

# Call player function:
function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/cancel_sender

tag @s remove CancelledBy