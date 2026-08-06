# Called by node/try_increase_timer

## CONSTRAINTS
#   AS room node

#====================================================================================================

## KNOCK
# Gets knocked when someone fails to join because all locker rooms are full

# Run condition checker
execute if function exigence:room/node/if_increase_timer run function exigence:room/locker_room/increase_timer
