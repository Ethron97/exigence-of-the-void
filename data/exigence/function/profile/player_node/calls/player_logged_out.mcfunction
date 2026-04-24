# Called by check_if_online

## CONSTRAINTS
#   AS player node

#====================================================================================================

#say (D3) Player logged out

scoreboard players set @s profile.node.player_is_online 0

# Check for functions to queue
execute if score @s player.node.joined_by matches 1.. run function exigence:profile/player_node/calls/private/queue_invite_leave
execute if score @s player.node.invited_by matches 1.. run function exigence:profile/player_node/calls/private/queue_invite_decline

# Save scores for comparison
scoreboard players operation #compare player.node.room_id = @s player.node.room_id
scoreboard players operation #player_id Temp = @s profile.node.player_id

# Other functionality on log-out
#   Close profile creation menu if they had it open
execute if entity @s[tag=PlayerCreatingProfile] run function exigence:profile/player_node/calls/private/close_creation_menu

#   If at least one player is ProfileSelecting, update coop lists
execute if entity @a[tag=ProfileSelecting,limit=1] run function exigence:hub/profile_selector/menu/display/text_displays/player_list_display/update_all_displays_player

#   If Predungeon room exists, is not state 0, and this player was in that room, reset to prebutton (or reset room, if during load sequence)
execute if score @s player.node.room_id matches 1.. unless score predungeon.door_state hub.room_misc matches 0 in exigence:hub \
as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,type=minecraft:marker,scores={hub.room.room_type=2},tag=RoomNode] if score @s hub.room.room_id = #compare player.node.room_id \
run function exigence:room/predungeon/player_logged_out