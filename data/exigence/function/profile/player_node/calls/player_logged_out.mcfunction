# Called by check_if_online

## CONSTRAINTS
#   AS player node

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3 Profile) Player logged out

scoreboard players set @s profile.node.player_is_online 0

# Check for functions to queue
execute if score @s player.node.joined_by matches 1.. run function exigence:profile/player_node/calls/private/queue_invite_leave
execute if score @s player.node.invited_by matches 1.. run function exigence:profile/player_node/calls/private/queue_invite_decline

# Save scores for comparison
scoreboard players operation #player_id Temp = @s profile.node.player_id

# Other functionality on log-out
#   Close profile creation menu if they had it open
execute if entity @s[tag=PlayerCreatingProfile] run function exigence:profile/player_node/calls/private/close_creation_menu

#   If at least one player is ProfileSelecting, update coop lists
execute if entity @a[tag=ProfileSelecting,limit=1] run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/update_all_displays_player

execute if score @s player.node.room_id matches 1.. run scoreboard players operation #compare player.node.room_id = @s player.node.room_id
#   If Predungeon room exists, is not state 0, and this player was in that room, reset to prebutton (or reset room, if during load sequence)
execute if score @s player.node.room_id matches 1.. unless score predungeon.door_state hub.room_misc matches 0 in exigence:hub \
as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,scores={hub.room.room_type=2},tag=RoomNode] if score @s hub.room.room_id = #compare player.node.room_id \
run function exigence:room/predungeon/player_logged_out

# If loaded profile is a co-op, inform other members
scoreboard players operation #compare player.node.loaded_profile_id = @s player.node.loaded_profile_id
execute in exigence:profile_data as @e[x=0,y=0,z=0,dx=15,dy=256,dz=15,tag=ProfileNode] if score @s profile.node.profile_id = #compare player.node.loaded_profile_id \
if score @s profile.node.coop_profile_id matches 1.. run function exigence:profile/profile_node/private/inform_logged_out_profile with entity @s data.custom_data