# Setup the facehugger for this locker room

## CONSTRAINTS
#   AS player
#   AT locker room node

#====================================================================================================

say Setup locker room interaction

# Summon interaction
summon interaction ~ ~ ~ {Tags:["LockerRoomInteraction","NewLockerRoomInteraction","FunctionInteraction"],response:true,width:0.01,height:0.01}

# Assign locker room id to interaction
scoreboard players operation @n[type=interaction,tag=NewLockerRoomInteraction,distance=..0.1] hub.entity.locker_room_id = @n[type=marker,tag=LockerRoomNode,distance=..0.1] hub.locker_room_id

# Assign player id to interaction
scoreboard players operation @n[type=interaction,tag=NewLockerRoomInteraction,distance=..0.1] hub.entity.player_id = @s career.player_id

# Remove local tag
tag @n[type=interaction,tag=NewLockerRoomInteraction,distance=..0.1] remove NewLockerRoomInteraction