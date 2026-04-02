# Cancel an outgoing invitation

## CONSTRAINTS
#   AS player node of player that sent the invite

#====================================================================================================

say Cancel invite FULL (from player node)

execute as @a if score @s career.player_id = #compare profile.node.player_id run tag @s add CancelledBy

scoreboard players set #temp67 Temp 0
scoreboard players operation #temp67 Temp += @s player.node.invited_player_1
scoreboard players operation #temp67 Temp += @s player.node.invited_player_2
scoreboard players operation #temp67 Temp += @s player.node.invited_player_3
# Only run cancel if there was an actual outgoing invite still
scoreboard players operation #compare profile.node.player_id = @s profile.node.player_id
execute if score #temp67 Temp matches 1.. run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/try_cancel_sender

scoreboard players operation #target player.node.invite_sent_to = @s player.node.invited_player_1
execute at @s as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #target player.node.invite_sent_to \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/try_cancel_invited

scoreboard players operation #target player.node.invite_sent_to = @s player.node.invited_player_2
execute at @s as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #target player.node.invite_sent_to \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/try_cancel_invited

scoreboard players operation #target player.node.invite_sent_to = @s player.node.invited_player_3
execute at @s as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #target player.node.invite_sent_to \
run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/try_cancel_invited

# Clear scoreboards
scoreboard players reset @s player.node.invited_player_1
scoreboard players reset @s player.node.invited_player_2
scoreboard players reset @s player.node.invited_player_3
scoreboard players reset @s player.node.joined_player_1
scoreboard players reset @s player.node.joined_player_2
scoreboard players reset @s player.node.joined_player_3
scoreboard players reset @s player.node.invite_sent_to

# Updating confirm button
scoreboard players set #filled_slots Temp 0
execute at @a[tag=CancelledBy,limit=1] as @n[type=item_display,tag=CoopInvitorDisplay,tag=Confirm,distance=..16] run function exigence:hub/profile_selector/menu/display/coop_invitor/effects/update_confirm_button

# Remove local tag (added by cancel_sender)
tag @a[tag=CancelledBy] remove InvitesSent
tag @a[tag=CancelledBy] remove CancelledBy