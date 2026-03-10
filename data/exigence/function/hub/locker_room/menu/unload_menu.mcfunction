# Kill all menu related with score

## CONSTRAINTS
#   AT location

## INPUT
#   INT locker_room_id

#====================================================================================================

$kill @e[distance=..20,scores={hub.entity.locker_room_id=$(locker_room_id)}]
