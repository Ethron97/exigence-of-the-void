# Send invite to player

## CONSTRAINTS
#   AS player invited
#   AT player inviting

#=============================================================================================================

## RECEIVER
scoreboard players enable @s AcceptCoopInvite
scoreboard players enable @s DeclineCoopInvite

# Inform
tellraw @s [{text:"\nYou have been invited by ",color:"green"},{selector:"@p[distance=..0.1,tag=SendingInvite]",color:"gold"},{text:" to join a co-co profile!",color:"green"}]
tellraw @s [{text:"Click:    ",color:gray},{text:"[ACCEPT]",italic:false,bold:false,color:"green","click_event": {"action":"run_command","command":"/trigger AcceptCoopInvite"}},"    ",{text:"[DECLINE]",italic: false,color: "red","click_event": {"action":"run_command","command":"/trigger DeclineCoopInvite"}}]
tellraw @s [{text:""}]
execute at @s run playsound entity.experience_orb.pickup player @s ~ ~100 ~ 100 1

# Save IDID of the player head that sourced the invite
scoreboard players operation @s hub.player_entity.query_idid = #compare hub.player_entity.query_idid
scoreboard players operation #compare hub.player.profile_selector_id = @p[distance=..0.1,tag=SendingInvite] hub.player.profile_selector_id

# Add tag for actionbar
tag @s add Invited
tag @p[distance=..0.1,tag=SendingInvite] add InviteSent
tag @p[distance=..0.1,tag=SendingInvite] add InvitesSent

# Player node scoreboards
scoreboard players operation #target career.player_id = @s career.player_id
scoreboard players operation #sending career.player_id = @p[distance=..0.1,tag=SendingInvite] career.player_id

execute in exigence:profile_data positioned 8 0 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] \
if score @s profile.node.player_id = #target career.player_id run scoreboard players operation @s player.node.invited_by = #sending career.player_id
execute in exigence:profile_data positioned 8 0 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] \
if score @s profile.node.player_id = #target career.player_id run scoreboard players operation @s hub.player_entity.query_idid = #compare hub.player_entity.query_idid

execute in exigence:profile_data positioned 8 0 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] \
if score @s profile.node.player_id = #sending career.player_id run scoreboard players operation @s player.node.invite_sent_to = #target career.player_id
execute in exigence:profile_data positioned 8 0 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] \
if score @s profile.node.player_id = #sending career.player_id run function exigence:hub/profile_selector/menu/display/coop_invitor/status/get_display

scoreboard players operation @s player.node.invited_by = #sending career.player_id
scoreboard players operation @p[distance=..0.1,tag=SendingInvite] player.node.invite_sent_to = #target career.player_id

#=============================================================================================================
## SENDER
tellraw @p[distance=..0.1,tag=SendingInvite] [{text:"An invite has been sent to ",color:"green"},{selector:"@s",color:"gold"},{text:"!",color:"green"}]
playsound entity.experience_orb.pickup player @p[distance=..0.1,tag=SendingInvite] ~ ~100 ~ 100 1

# Start timeout? TODO
