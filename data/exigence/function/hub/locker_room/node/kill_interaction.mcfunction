# Kill this players' facehugger

## CONSTRAINTS
#   AS player

#====================================================================================================

say Kill locker room interaction

scoreboard players operation #compare hub.player.locker_room_id = @s hub.player.locker_room_id
scoreboard players operation #compare career.player_id = @s career.player_id

# Kill intearction with matching locker room AND player id
execute as @e[type=interaction,tag=LockerRoomInteraction,distance=..16] if score @s hub.entity.locker_room_id = #compare hub.player.locker_room_id \
if score @s hub.entity.player_id = #compare career.player_id run kill @s
