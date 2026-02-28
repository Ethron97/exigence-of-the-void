# Called by run_queued_functions

## CONSTRAINTS
#   AS player
#   AT player node

#====================================================================================================

say Run queued invite decline

# Reset score
scoreboard players reset @n[distance=..0.1,type=armor_stand,tag=PlayerNode] player.node.queue.invite_decline

# Call player function:
function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/cancel_invited
