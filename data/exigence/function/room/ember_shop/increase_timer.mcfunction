# Called by node/try_increase_timer, if if_increase_timer

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Increase timeout
scoreboard players add @s hub.room.current_timer 1

# Update value of expire warning bossbar
function exigence:bossbar/room_expire/ember_shop/update_value

# Call close function if timer exceeds max
execute if score @s hub.room.current_timer > @s hub.room.max_timer run function exigence:room/node/close_from_expire
