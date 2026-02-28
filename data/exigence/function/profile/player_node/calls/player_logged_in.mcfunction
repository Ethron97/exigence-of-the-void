# Called by player/logged_in

## CONSTRAINTS
#   AS player node

#====================================================================================================

say Player logged in (node)

scoreboard players set @s profile.node.player_is_online 1

# Check for queued functions
execute if score @s player.node.queue matches 1.. run function exigence:profile/player_node/calls/run_queued_functions

# Other functionality:
#   If at least one player is ProfileSelecting, update coop lists.
scoreboard players operation #player_id Temp = @s profile.node.player_id
execute if entity @a[tag=ProfileSelecting,limit=1] run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/update_all_displays_player