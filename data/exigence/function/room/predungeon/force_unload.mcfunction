# Force unload this room
#   Kick logged in players, timeout logged out players

## CONSTRAINTS
#   AS room node

#====================================================================================================

say (D3) Force unload [predungeon]

# Kick players currently in the room
execute as @a[tag=Predungeon] run function exigence:hub/predungeon/access/kick

# Close the room down
execute in exigence:hub positioned 0.5 209.0 104.5 run function exigence:hub/predungeon/node/unload_room

# Queue function to kick offline players
scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id
# Add queued functions to player node(s)
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s player.node.room_id = #compare hub.room.room_id run scoreboard players add @s player.node.queue 1
execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] \
if score @s player.node.room_id = #compare hub.room.room_id run scoreboard players add @s player.node.queue.kicked_predungeon 1

# Kill this room node
kill @s[type=minecraft:marker,tag=RoomNode]