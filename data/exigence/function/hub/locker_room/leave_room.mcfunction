#say Leave Locker room

# Remove coop tag
tag @s remove Coop

# Teleport
tp @s ~ ~ ~1
playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Save/remove chests
function exigence:hub/locker_room/save_chests

# Remove tag
tag @s remove Lockerroom
team leave @s
