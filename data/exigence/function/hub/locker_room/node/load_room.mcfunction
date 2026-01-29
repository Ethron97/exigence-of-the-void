# Run open/setup when first player enters the room

## CONSTRAINTS
#   AS/AT locker room node

#====================================================================================================

say Load room (locker room)

# Generate new id
scoreboard players add #sequence hub.locker_room_id 1
scoreboard players operation @s hub.locker_room_id = #sequence hub.locker_room_id

# Update ID in the name
execute store result storage exigence:temp id int 1 run scoreboard players get #sequence hub.locker_room_id
function exigence:hub/locker_room/node/private/add_id_to_name with storage exigence:temp

# Load deck analyzer menu (just gets the node into position)
execute positioned ^ ^ ^2.49 run function exigence:hub/profile_selector/load/setup_deck_analyzer
