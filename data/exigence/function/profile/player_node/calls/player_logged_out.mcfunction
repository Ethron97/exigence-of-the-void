# Called by check_if_online

## CONSTRAINTS
#   AS player node

#====================================================================================================

say Player logged out

scoreboard players set @s profile.node.player_is_online 0

# Check for functions to queue
execute if score @s player.node.joined_by matches 1.. run function exigence:profile/player_node/calls/private/queue_invite_leave
execute if score @s player.node.invited_by matches 1.. run function exigence:profile/player_node/calls/private/queue_invite_decline


# Other functionality on log-out
#   Close profile creation menu if they had it open
execute if entity @s[tag=PlayerCreatingProfile] run function exigence:profile/player_node/calls/private/close_creation_menu
#   If at least one player is ProfileSelecting, update coop lists
scoreboard players operation #player_id Temp = @s profile.node.player_id
execute if entity @a[tag=ProfileSelecting,limit=1] run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/update_all_displays_player
