# Close room, typically after timeout ends

## CONSTRAINTS
#   AS room node

#====================================================================================================

execute if score toggle.hub debug matches 1 if score debug.level debug matches 2.. run say (D2 Hub) Close profile selector (room expired)

scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id

# Try to kick any players who are online
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode,scores={player.node.room_id=1..}] \
if score @s player.node.room_id = #compare hub.room.room_id run function exigence:room/profile_selector/expire/try_kick_player

# Close the room down
execute in exigence:hub at @n[x=-98,y=0,z=798,dx=244,dy=256,dz=16,type=minecraft:marker,tag=ProfileSelectorNode] \
if score @s hub.entity.room_id = #comapre hub.room.room_id at @s run function exigence:hub/profile_selector/node/unload_room
