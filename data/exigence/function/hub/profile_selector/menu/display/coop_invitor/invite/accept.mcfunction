# Accept an invitation

## CONSTRAINTS
#   AS player node of player that sent the invite

#=============================================================================================================

say Accept invite (from player node)

scoreboard players operation #target player.node.invite_sent_to = @s player.node.invite_sent_to
scoreboard players operation #compare profile.node.player_id = @s profile.node.player_id

# If player exists, run respective accept function.
execute as @a if score @s career.player_id = #target player.node.invite_sent_to run tag @s add Inviteded
execute as @a if score @s career.player_id = #compare profile.node.player_id run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/accept_sender
execute as @a if score @s career.player_id = #target player.node.invite_sent_to run function exigence:hub/profile_selector/menu/display/coop_invitor/invite/private/accept_invited

execute if score @s player.node.invited_player_1 = @s player.node.invite_sent_to run scoreboard players operation @s player.node.joined_player_1 = @s player.node.invited_player_1
execute if score @s player.node.invited_player_2 = @s player.node.invite_sent_to run scoreboard players operation @s player.node.joined_player_2 = @s player.node.invited_player_2
execute if score @s player.node.invited_player_3 = @s player.node.invite_sent_to run scoreboard players operation @s player.node.joined_player_3 = @s player.node.invited_player_3

scoreboard players reset @s player.node.invite_sent_to

# Remove local tag (added by cancel_sender)
tag @a[tag=InvitedBy] remove InvitedBy
tag @a[tag=Inviteded] remove Inviteded

# Updating confirm button
scoreboard players set #filled_slots Temp 0
execute if score @s player.node.invited_player_1 matches 1.. run scoreboard players add #filled_slots Temp 1
execute if score @s player.node.invited_player_2 matches 1.. run scoreboard players add #filled_slots Temp 1
execute if score @s player.node.invited_player_3 matches 1.. run scoreboard players add #filled_slots Temp 1