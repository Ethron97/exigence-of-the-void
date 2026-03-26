# Triage function to call the correct close function based on room type

## CONSTRAINTS
#   AS room node

#====================================================================================================

say Node close triage

# Triage
execute if score @s hub.room.room_type matches 1 run function exigence:room/tutorial/close_from_timeout
execute if score @s hub.room.room_type matches 2 run function exigence:room/predungeon/close_from_timeout

execute if score @s hub.room.room_type matches 9 run function exigence:room/item_shop/close_from_timeout
execute if score @s hub.room.room_type matches 10 run function exigence:room/profile_selector/close_from_timeout
execute if score @s hub.room.room_type matches 11 run function exigence:room/locker_room/close_from_timeout
# ...

scoreboard players operation #compare hub.room.room_id = @s hub.room.room_id
# Clear room id from player and player node
execute in exigence:profile_data positioned 8 0 8 as @e[distance=..20,type=armor_stand,tag=PlayerNode] if score @s player.node.room_id = #compare hub.player.room_id run scoreboard players reset @s player.node.room_id
execute as @a if score @s hub.player.room_id = #compare hub.room.room_id run scoreboard players reset @s hub.player.room_id

# Kill room node
kill @s[type=marker,tag=RoomNode]