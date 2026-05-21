# Called by run_queued_functions

## CONSTRAINTS
#   AS player node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 3.. run say (D3 Hub) Run read mail

# Reset score
scoreboard players reset @s player.node.queue.mail

# Call function:
function exigence:profile/player_node/calls/private/read_mail_recursive
