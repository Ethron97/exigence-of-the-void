# Kill all facehuggers in this room

## CONSTRAINTS
#   AS locker room node

#====================================================================================================

say Kill all locker room interactions

scoreboard players operation #compare hub.entity.locker_room_id = @s hub.locker_room_id
execute as @e[type=interaction,tag=LockerRoomInteraction,distance=..8] if score @s hub.entity.locker_room_id = #compare hub.entity.locker_room_id run kill @s
