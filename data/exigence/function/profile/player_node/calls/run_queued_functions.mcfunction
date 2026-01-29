# Called by player_logged_in if at least one function is queued

## CONSTRAINTS
#   AS player node

#====================================================================================================

say Run queued functions

# Assumes local tag was added at step "player logged in"
execute if score @s player.node.queue.invite_decline matches 1.. at @s as @p[tag=JustLoggedIn] run function exigence:profile/player_node/calls/private/run_invite_decline
execute if score @s player.node.queue.invite_leave matches 1.. at @s as @p[tag=JustLoggedIn] run function exigence:profile/player_node/calls/private/run_invite_leave
execute if score @s player.node.queue.coop_cancel matches 1.. at @s as @p[tag=JustLoggedIn] run function exigence:profile/player_node/calls/private/run_coop_cancel
execute if score @s player.node.queue.chest_wait_over matches 1.. at @s as @p[tag=JustLoggedIn] run function exigence:profile/player_node/calls/private/run_chest_wait_over
execute if score @s player.node.queue.profile_scores matches 1.. at @s as @p[tag=JustLoggedIn] run function exigence:profile/player_node/calls/private/run_profile_scores
execute if score @s player.node.queue.timeout_profile_selector matches 1.. at @s as @p[tag=JustLoggedIn] run function exigence:profile/player_node/calls/private/run_timeout_profile_selector
execute if score @s player.node.queue.timeout_tutorial matches 1.. at @s as @p[tag=JustLoggedIn] run function exigence:profile/player_node/calls/private/run_timeout_tutorial
# ...
execute if score @s player.node.queue.mail matches 1.. run function exigence:profile/player_node/calls/private/run_read_mail

# Reset score
scoreboard players reset @s player.node.queue