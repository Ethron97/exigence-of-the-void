# Setup the facehugger for this locker room

## CONSTRAINTS
#   AS player
#   AT locker room node

#====================================================================================================

say Setup locker room interaction

# Summon interaction
summon interaction ~ ~ ~ {Tags:["LockerRoomInteraction","NewLockerRoomInteraction","FunctionInteraction"],response:true,width:0.01,height:0.01}

# Assign locker room id to interaction
scoreboard players operation @n[distance=..0.1,type=interaction,tag=NewLockerRoomInteraction] hub.entity.locker_room_id = @n[distance=..0.1,type=marker,tag=LockerRoomNode] hub.locker_room_id

# Assign player id to interaction
scoreboard players operation @n[distance=..0.1,type=interaction,tag=NewLockerRoomInteraction] hub.entity.player_id = @s career.player_id

# Remove local tag
tag @n[distance=..0.1,type=interaction,tag=NewLockerRoomInteraction] remove NewLockerRoomInteraction