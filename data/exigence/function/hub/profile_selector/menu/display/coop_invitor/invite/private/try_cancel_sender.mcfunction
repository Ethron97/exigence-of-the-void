# Try to cancel an invite, depending on if player is found or not

## CONSTRAINTS

## INPUT
#   SCORE #compare profile.node.player_id

#====================================================================================================

scoreboard players set #found_player Temp 0

# If player exists, run respective cancel function
execute as @a if score @s career.player_id = #compare profile.node.player_id run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/cancel_sender

# Else, queue the cancel on the player node
execute if score #found_player Temp matches 0 run scoreboard players set @s player.node.queue.coop_cancel 1
execute if score #found_player Temp matches 0 run scoreboard players add @s player.node.queue 1