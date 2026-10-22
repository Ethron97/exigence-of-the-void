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

# Update the expire timer display
execute in exigence:hub positioned 2.5 208.5 33.98 run function exigence:room/predungeon/expire_display/update
