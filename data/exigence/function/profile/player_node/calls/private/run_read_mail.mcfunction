# Called by run_queued_functions

## CONSTRAINTS
#   AS player node

#====================================================================================================

say Run read mail

# Reset score
scoreboard players reset @s player.node.queue.mail

# Call function:
function exigence:profile/player_node/calls/private/read_mail_recursive
