# Close room, typically after timeout ends

## CONSTRAINTS
#   AS room node

#====================================================================================================

say Close profile selector (player timed out)

scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id

# Close the room down
execute in exigence:hub positioned 999.5 128 6.5 as @e[type=marker,tag=ProfileSelectorNode,distance=..140] \
if score @s hub.entity.room_id = #compare hub.room.room_id at @s run function exigence:hub/profile_selector/node/unload_room

# Add queued functions to player node(s)
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s player.node.room_id = #compare hub.room.room_id run scoreboard players add @s player.node.queue 1
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s player.node.room_id = #compare hub.room.room_id run scoreboard players add @s player.node.queue.timeout_profile_selector 1
