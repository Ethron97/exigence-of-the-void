# Called from end of game loading sequence

## CONSTRAINTS
#   AS room node (room type = 2)

#====================================================================================================

# Update room type
scoreboard players set @s hub.room.room_type 5

# Update max timeout
function exigence:room/node/private/set_max_timeout

# Update max timer
function exigence:room/node/private/set_max_timer
