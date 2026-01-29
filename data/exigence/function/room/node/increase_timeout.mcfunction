# Called by node/tick if no players are online

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Increase timeout
scoreboard players add @s hub.room.current_timeout 1

# If timeout exceeds limit, move info to player node and remove room node (to prevent further ticking)
execute if score @s hub.room.current_timeout > @s hub.room.max_timeout run function exigence:room/node/close_from_timeout
