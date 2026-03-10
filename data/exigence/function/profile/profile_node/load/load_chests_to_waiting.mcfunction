# Called from try_load_to_waiting

## CONSTRAINTS
#   AS anything? Profile note, though not enforced.

## INPUT
#   SCORE #room_type
#   SCORE #room_id

#====================================================================================================

say Load chests to waiting

# Call triage function based on room type code
execute if score #room_type Temp matches 4 run say Loading chests to waiting ITEM SHOP
execute if score #room_type Temp matches 4 in exigence:hub positioned -27.5 200.0 0.5 run function exigence:hub/item_shop/load/load_chests

execute if score #room_type Temp matches 10 run say Loading chests to waiting PROFILE SELECTOR
execute if score #room_type Temp matches 10 in exigence:hub positioned 999 129 6 as @e[distance=..140,type=marker,tag=ProfileSelectorNode] \
if score @s hub.entity.room_id = #room_id Temp at @s run function exigence:hub/profile_selector/load/load_chests

execute if score #room_type Temp matches 11 run say Loading chests to waiting LOCKER ROOM
execute if score #room_type Temp matches 11 in exigence:hub positioned 0 100 0 as @e[distance=..200,type=marker,tag=LockerRoomNode] \
if score @s hub.entity.room_id = #room_id Temp at @s run function exigence:hub/locker_room/load/load_chests

# ...