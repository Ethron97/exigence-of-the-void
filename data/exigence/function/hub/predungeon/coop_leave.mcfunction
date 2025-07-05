# To lockerroom

say Leave predungeon (coop)

# Reset team so you only see your own score
scoreboard players reset * ConsumableLimit

# Join team/tag
tag @s add Lockerroom
team join Lockerroom @s
tag @s remove Predungeon

teleport @s ~ ~ ~3

playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

function exigence:hub/locker_room/load_chests
