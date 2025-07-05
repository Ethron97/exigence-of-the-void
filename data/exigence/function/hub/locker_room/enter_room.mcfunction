#say Enter Locker room

# Add tag/team
tag @s add Lockerroom

# Reset team so you only see your own score
scoreboard players reset * ConsumableLimit

team join Lockerroom @s

# Teleport
tp @s ~ ~ ~-1

# Play warp sound
playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

function exigence:hub/locker_room/load_chests

# Refresh item limit
function exigence:player/utility/calculate_item_limit
