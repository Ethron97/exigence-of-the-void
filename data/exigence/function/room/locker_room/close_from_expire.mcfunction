# Close room, typically after timeout ends

## CONSTRAINTS
#   AS room node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 2.. run say (D2 Hub) Close locker room (room expired)

scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id

# Try to kick any players who are online
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode,scores={player.node.room_id=1..}] \
if score @s player.node.room_id = #compare hub.room.room_id run function exigence:room/locker_room/expire/try_kick_player

# Close the room down
execute in exigence:hub as @e[x=-29,y=197,z=6,dx=24,dy=8,dz=24,type=minecraft:marker,tag=LockerRoomNode] \
if score @s hub.entity.room_id = #compare hub.room.room_id at @s run function exigence:hub/locker_room/node/unload_room
