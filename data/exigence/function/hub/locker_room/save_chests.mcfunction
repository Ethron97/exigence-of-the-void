# Copy chest data
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s PlayerID = @a[tag=Lockerroom,limit=1] PlayerID at @s run function exigence:hub/locker_room/save_chests_b

# Remove chests
fill -263 17 -58 -259 17 -62 air
