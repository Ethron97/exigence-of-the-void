# Kill all facehuggers in this room

## CONSTRAINTS
#   AS locker room node

#====================================================================================================

execute if score debug.level debug matches 4.. run say (D4) Kill all locker room interactions

scoreboard players operation #compare hub.entity.locker_room_id = @s hub.locker_room_id
execute as @e[type=interaction,tag=LockerRoomInteraction,distance=..8] if score @s hub.entity.locker_room_id = #compare hub.entity.locker_room_id run kill @s
