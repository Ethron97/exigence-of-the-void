# Close room, typically after timeout ends

## CONSTRAINTS
#   AS room node

#====================================================================================================

#say (D3) Close locker room (player(s) timed out)

scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id

# Close the room down
execute in exigence:hub positioned 0 200 0 as @e[type=marker,tag=LockerRoomNode,distance=..100] \
if score @s hub.entity.room_id = #compare hub.room.room_id at @s run function exigence:hub/locker_room/node/unload_room

# Add queued functions to player node(s)
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s player.node.room_id = #compare hub.room.room_id run scoreboard players add @s player.node.queue 1
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s player.node.room_id = #compare hub.room.room_id run scoreboard players add @s player.node.queue.timeout_locker_room 1
