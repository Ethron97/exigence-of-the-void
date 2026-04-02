# Handle player leaving the room

## CONSTRAINTS
#   AS player

#====================================================================================================

say Leaving profile selector

tag @s remove ProfileSelecting

#tp @s -3.5 195.0 -65.5 -90 0
tp @s -2.5 200.0 -15.5 -90 0
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Reset team
team leave @s

# Handle scores
scoreboard players operation #compare hub.profile_selector_id = @s hub.player.profile_selector_id
scoreboard players reset @s hub.player.profile_selector_id
scoreboard players reset @s shop.player.looking_at_idid
# Reset triggers
scoreboard players reset @s AcceptCoopInvite
scoreboard players reset @s DeclineCoopInvite

# Unload room
execute in exigence:hub positioned 999.5 128 6.5 as @e[type=marker,tag=ProfileSelectorNode,distance=..140] \
if score @s hub.profile_selector_id = #compare hub.profile_selector_id at @s run function exigence:hub/profile_selector/node/unload_room

# If there was an invite pending on you, cancel it
execute if score @s hub.player_entity.query_idid matches 1.. run function exigence:misc/triggers/hub/invite_coop_decline

#====================================================================================================
# Remove room node
scoreboard players operation #compare hub.player.room_id = @s hub.player.room_id
execute in exigence:hub positioned 0 153 0 as @e[type=marker,tag=RoomNode,distance=..1] if score @s hub.room.room_id = #compare hub.player.room_id run kill @s
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s player.node.room_id = #compare hub.player.room_id run scoreboard players reset @s player.node.room_id
scoreboard players reset @s hub.player.room_id