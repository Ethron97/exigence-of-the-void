# Handle player leaving the room

## CONSTRAINTS
#   AS player

#====================================================================================================

say Kicking from locker room

tag @s remove LockerRoom

execute in exigence:hub run tp @s -13 198 14
execute at @s run playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Reset team
team leave @s

# Interaction gets removed on Unload room

# Handle scores
scoreboard players operation #compare hub.locker_room_id = @s hub.player.locker_room_id
scoreboard players reset @s hub.player.locker_room_id

scoreboard players reset @s hub.player.room_id
scoreboard players reset @s shop.player.looking_at_idid