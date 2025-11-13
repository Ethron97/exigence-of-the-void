# Try to cancel an invite, depending on if player is found or not

## CONSTRAINTS

## INPUT
#   SCORE   #target player.node.invite_sent_to

#=============================================================================================================

scoreboard players set #found_player Temp 0

# If player exists, run respective cancel function
execute as @a if score @s career.player_id = #target player.node.invite_sent_to run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/cancel_invited

# Else, queue the cancel on the player node
scoreboard players operation @s player.node.pending_invite_cancel = #found_player Temp

# Reset node scores
scoreboard players reset @s player.node.invited_by
scoreboard players reset @s hub.player_entity.query_idid
