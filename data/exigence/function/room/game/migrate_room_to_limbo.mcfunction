# Called from game win

## CONSTRAINTS
#   AS room node (room type = 3)

#====================================================================================================

# Update room type
scoreboard players set @s hub.room.room_type 4

# Update max timeout
function exigence:room/node/private/set_max_timeout

# Update max timer
function exigence:room/node/private/set_max_timer
