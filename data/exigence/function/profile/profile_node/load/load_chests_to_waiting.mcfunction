# Called from try_load_to_waiting

## CONSTRAINTS
#   AS anything? Profile note, though not enforced.

## INPUT
#   SCORE #room_type
#   SCORE #room_id

#====================================================================================================

#say (D3) Load chests to waiting

# Call triage function based on room type code
execute if score #room_type Temp matches 2 in exigence:hub positioned 0.5 209.0 104.5 run function exigence:hub/predungeon/load/load_chests



execute if score #room_type Temp matches 9 in exigence:hub positioned -27.5 200.0 0.5 run function exigence:hub/item_shop/load/load_chests

execute if score #room_type Temp matches 10 in exigence:hub as @e[x=-98,y=0,z=798,dx=244,dy=256,dz=16,type=marker,tag=ProfileSelectorNode] \
if score @s hub.entity.room_id = #room_id Temp at @s run function exigence:hub/profile_selector/load/load_chests

execute if score #room_type Temp matches 11 in exigence:hub positioned 0 100 0 as @e[type=marker,tag=LockerRoomNode,distance=..200] \
if score @s hub.entity.room_id = #room_id Temp at @s run function exigence:hub/locker_room/load/load_chests

# ...