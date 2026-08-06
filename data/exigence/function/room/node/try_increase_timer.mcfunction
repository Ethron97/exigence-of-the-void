# Called by node/tick

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Triage to correct type function
## SWITCH
execute if score @s hub.room.room_type matches 1 run return run function exigence:room/tutorial/try_increase_timer
execute if score @s hub.room.room_type matches 2 run return run function exigence:room/predungeon/try_increase_timer
#execute if score @s hub.room.room_type matches 3 run return run function exigence:room/game/try_increase_timer
#execute if score @s hub.room.room_type matches 4 run return run function exigence:room/limbo/try_increase_timer
execute if score @s hub.room.room_type matches 5 run return run function exigence:room/ember_shop/try_increase_timer

execute if score @s hub.room.room_type matches 9 run return run function exigence:room/item_shop/try_increase_timer
execute if score @s hub.room.room_type matches 10 run return run function exigence:room/profile_selector/try_increase_timer
execute if score @s hub.room.room_type matches 11 run return run function exigence:room/locker_room/try_increase_timer
