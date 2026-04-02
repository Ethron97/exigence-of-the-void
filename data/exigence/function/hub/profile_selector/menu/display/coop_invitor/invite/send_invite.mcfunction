# Send invite to player

## CONSTRAINTS
#   AS player invited
#   AT player inviting

#====================================================================================================

## RECEIVER
scoreboard players enable @s AcceptCoopInvite
scoreboard players enable @s DeclineCoopInvite

# Inform
tellraw @s [{text:"\nYou have been invited by ",color:"green"},{selector:"@p[tag=SendingInvite,distance=..0.1]",color:"gold"},{text:" to join a co-co profile!",color:"green"}]
tellraw @s [{text:"Click:    ",color:gray},{text:"[ACCEPT]",italic:false,bold:false,color:"green","click_event": {"action":"run_command","command":"/trigger AcceptCoopInvite"}},"    ",{text:"[DECLINE]",italic: false,color: "red","click_event": {"action":"run_command","command":"/trigger DeclineCoopInvite"}}]
tellraw @s [{text:""}]
execute at @s run playsound entity.experience_orb.pickup player @s ~ ~100 ~ 100 1

# Save IDID of the player head that sourced the invite
scoreboard players operation @s hub.player_entity.query_idid = #compare hub.player_entity.query_idid
scoreboard players operation #compare hub.player.profile_selector_id = @p[tag=SendingInvite,distance=..0.1] hub.player.profile_selector_id

# Add tag for actionbar
tag @s add Invited
tag @p[tag=SendingInvite,distance=..0.1] add InviteSent
tag @p[tag=SendingInvite,distance=..0.1] add InvitesSent

# Player node scoreboards
scoreboard players operation #target career.player_id = @s career.player_id
scoreboard players operation #sending career.player_id = @p[tag=SendingInvite,distance=..0.1] career.player_id

execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s profile.node.player_id = #target career.player_id run scoreboard players operation @s player.node.invited_by = #sending career.player_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s profile.node.player_id = #target career.player_id run scoreboard players operation @s hub.player_entity.query_idid = #compare hub.player_entity.query_idid

execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s profile.node.player_id = #sending career.player_id run scoreboard players operation @s player.node.invite_sent_to = #target career.player_id
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s profile.node.player_id = #sending career.player_id run function exigence:hub/profile_selector/menu/display/coop_invitor/status/get_display

scoreboard players operation @s player.node.invited_by = #sending career.player_id
scoreboard players operation @p[tag=SendingInvite,distance=..0.1] player.node.invite_sent_to = #target career.player_id

#====================================================================================================
## SENDER
tellraw @p[tag=SendingInvite,distance=..0.1] [{text:"An invite has been sent to ",color:"green"},{selector:"@s",color:"gold"},{text:"!",color:"green"}]
playsound entity.experience_orb.pickup player @p[tag=SendingInvite,distance=..0.1] ~ ~100 ~ 100 1

#====================================================================================================
## Store player heads in hands to save player names for login situations
#execute as @s run function exigence:player/get/player_head_data
#execute as @p[distance=..0.1,tag=SendingInvite] run function exigence:player/set/hand_player_head_data

#execute as @p[distance=..0.1,tag=SendingInvite] run function exigence:player/get/player_head_data
#execute as @s run function exigence:player/set/hand_player_head_data
#====================================================================================================

# Start timeout? TODO
