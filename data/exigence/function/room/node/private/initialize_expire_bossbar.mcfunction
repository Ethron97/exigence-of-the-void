# Initialize expire bossbar

## CONSTRAINTS
#   AS room node

#====================================================================================================

## SWITCH
execute if score @s hub.room.room_type matches 1 run return run function exigence:bossbar/room_expire/tutorial/initialize
execute if score @s hub.room.room_type matches 2 run return run function exigence:bossbar/room_expire/predungeon/initialize
# ...
