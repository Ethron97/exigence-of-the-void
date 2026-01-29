# Try to cancel an invite, depending on if player is found or not

## CONSTRAINTS
#   AS player node

## INPUT
#   SCORE   #target player.node.invite_sent_to

#====================================================================================================

scoreboard players set #found_player Temp 0

# If player exists, run respective cancel function
execute as @a if score @s career.player_id = #target player.node.invite_sent_to run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/cancel_invited

# Else, queue the cancel on the player node
execute if score #found_player Temp matches 0 run scoreboard players set @s player.node.queue.invite_decline 1
execute if score #found_player Temp matches 0 run scoreboard players add @s player.node.queue 1

# Reset node scores
scoreboard players reset @s player.node.invited_by
scoreboard players reset @s player.node.joined_by
scoreboard players reset @s hub.player_entity.query_idid
