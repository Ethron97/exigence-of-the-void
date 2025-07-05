# Load chests from player id
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s PlayerID = @a[tag=Lockerroom,limit=1] PlayerID at @s run function exigence:hub/locker_room/load_chests_b
