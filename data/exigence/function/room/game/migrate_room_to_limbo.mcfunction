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

# Instantly check if we can migrate to ember shop (if not a multiplayer world? Or, if nobody else is in limbo)
#execute if score #limbo_position Temp matches 0 run 
#function exigence:hub/limbo/node/limbo_room_update
# This didn't work for some reason