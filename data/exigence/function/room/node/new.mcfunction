# Summon new room node, constructor

## CONSTRAINTS
#   IN exigence:hub
#   AT 0 153 0

## INPUT
#   SCORE #room_type Temp

#====================================================================================================

say New room node

# summon minecraft:marker at fact location
summon minecraft:marker ~ ~ ~ {Tags:["NewRoomNode","RoomNode"],CustomName:[{text:"Marker | RoomNode",color:"#6dc532"},{text:"e",color:"#4c98ee"}]}

# Generate and assign new id
scoreboard players add #next hub.room.room_id 1
scoreboard players operation @n[distance=..1,type=marker,tag=NewRoomNode] hub.room.room_id = #next hub.room.room_id

# Add room ID to the name
execute store result storage exigence:temp id int 1 run scoreboard players get #next hub.room.room_id
execute as @n[distance=..1,type=marker,tag=NewRoomNode] run function exigence:room/node/private/add_id_to_name with storage exigence:temp

# Set room type code
scoreboard players operation @n[distance=..1,type=marker,tag=NewRoomNode] hub.room.room_type = #room_type Temp

# Set max timeout based on room type
execute as @n[distance=..1,type=marker,tag=NewRoomNode] run function exigence:room/node/private/set_max_timeout

# Initialize timeout at 0
scoreboard players set @n[distance=..1,type=marker,tag=NewRoomNode] hub.room.current_timeout 0

# Remove local tag
tag @n[distance=..1,type=marker,tag=NewRoomNode] remove NewRoomNode