# Called by node/try_increase_timer

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Update expire warning bossbar visibility
function exigence:bossbar/room_expire/predungeon/update_visibility

## KNOCK
# Knock for this room gets set when a player tries to enter the door

# Run condition checker
execute if function exigence:room/node/if_increase_timer run function exigence:room/predungeon/increase_timer
