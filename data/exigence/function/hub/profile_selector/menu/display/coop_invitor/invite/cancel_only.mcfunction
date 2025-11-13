# Cancel an outgoing invitation, bnly to a specific player
#   Also called if a player declines or leaves the creation process

## CONSTRAINTS
#   AS player node of player that sent the invite

## INPUT
#   SCORE #target player.node.invite_sent_to

#=============================================================================================================

say Cancel invite ONLY (from player node)
scoreboard players operation #compare profile.node.player_id = @s profile.node.player_id

execute as @a if score @s career.player_id = #target player.node.invite_sent_to run tag @s add Inviteded
execute as @a if score @s career.player_id = #compare profile.node.player_id run tag @s add CancelledBy

execute if score @s player.node.invite_sent_to = #target player.node.invite_sent_to \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/try_cancel_sender
execute unless score @s player.node.invite_sent_to = #target player.node.invite_sent_to as @a[tag=CancelledBy] \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/inform_sender

execute at @s as @e[distance=..32,type=armor_stand,tag=PlayerNode] if score @s profile.node.player_id = #target player.node.invite_sent_to \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/try_cancel_invited

# Clear scoreboards
execute if score @s player.node.invited_player_1 = #target player.node.invite_sent_to run scoreboard players reset @s player.node.invited_player_1
execute if score @s player.node.invited_player_2 = #target player.node.invite_sent_to run scoreboard players reset @s player.node.invited_player_2
execute if score @s player.node.invited_player_3 = #target player.node.invite_sent_to run scoreboard players reset @s player.node.invited_player_3
execute if score @s player.node.joined_player_1 = #target player.node.invite_sent_to run scoreboard players reset @s player.node.joined_player_1
execute if score @s player.node.joined_player_2 = #target player.node.invite_sent_to run scoreboard players reset @s player.node.joined_player_2
execute if score @s player.node.joined_player_3 = #target player.node.invite_sent_to run scoreboard players reset @s player.node.joined_player_3
execute if score @s player.node.invite_sent_to = #target player.node.invite_sent_to run scoreboard players reset @s player.node.invite_sent_to

# Updating confirm button
scoreboard players set #filled_slots Temp 0
execute if score @s player.node.joined_player_1 matches 1.. run scoreboard players add #filled_slots Temp 1
execute if score @s player.node.joined_player_2 matches 1.. run scoreboard players add #filled_slots Temp 1
execute if score @s player.node.joined_player_3 matches 1.. run scoreboard players add #filled_slots Temp 1

execute at @a[tag=CancelledBy,limit=1] as @n[distance=..16,type=item_display,tag=CoopInvitorDisplay,tag=Confirm] run function exigence:hub/profile_selector/menu/display/coop_invitor/effects/update_confirm_button

# Remove local tag(s)
tag @a[tag=Inviteded] remove Inviteded
tag @a[tag=CancelledBy] remove CancelledBy