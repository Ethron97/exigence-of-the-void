# Kill all facehuggers in this room

## CONSTRAINTS
#   AS locker room node

#====================================================================================================

say Kill all locker room interactions

scoreboard players operation #compare hub.entity.locker_room_id = @s hub.locker_room_id
execute as @e[distance=..8,type=interaction,tag=LockerRoomInteraction] if score @s hub.entity.locker_room_id = #compare hub.entity.locker_room_id run kill @s
