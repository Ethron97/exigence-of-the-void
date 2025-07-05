# From lockerroom

say Enter predungeon (coop)

# Save/remove chests
function exigence:hub/locker_room/save_chests

# Tag
tag @s remove Lockerroom
team leave @s

# Teleport
teleport @s ~ ~ ~-3
playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Currency warn maybe
function exigence:hub/predungeon/private/currency_warn
