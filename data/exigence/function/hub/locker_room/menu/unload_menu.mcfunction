# Kill all menu related with score

## CONSTRAINTS
#   AT location

## INPUT
#   INT locker_room_id

#====================================================================================================

$kill @e[scores={hub.entity.locker_room_id=$(locker_room_id)},distance=..20]
