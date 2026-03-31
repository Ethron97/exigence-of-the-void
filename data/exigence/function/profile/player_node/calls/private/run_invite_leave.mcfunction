# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say Run queued invite leave

# Reset score
scoreboard players reset @n[type=armor_stand,tag=PlayerNode,distance=..0.1] player.node.queue.invite_leave

# Call player function:
function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/cancel_invited
