# Set data for new node

## CONSTRAINTS
#   AS new room marker

## INPUT
#   SCORE #room_type Temp

#====================================================================================================

#say (D3) New room node (data)

# Generate and assign new id
scoreboard players add #next hub.room.room_id 1
scoreboard players operation @s hub.room.room_id = #next hub.room.room_id

# Add room ID to the name
execute store result storage exigence:temp id int 1 run scoreboard players get #next hub.room.room_id
function exigence:room/node/private/add_id_to_name with storage exigence:temp

# Set room type code
scoreboard players operation @s hub.room.room_type = #room_type Temp

# Set max timeout based on room type
function exigence:room/node/private/set_max_timeout

# Initialize timeout at 0
scoreboard players set @s hub.room.current_timeout 0

# Remove local tag
tag @s remove NewRoomNode