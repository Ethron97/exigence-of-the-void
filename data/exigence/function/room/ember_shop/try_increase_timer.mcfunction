# Called by node/try_increase_timer

## CONSTRAINTS
#   AS room node

#====================================================================================================

# Update expire warning bossbar visibility
function exigence:bossbar/room_expire/ember_shop/update_visibility

## KNOCK
# Gets knocked from a limbo node tick, if any players in that limbo node are online

# Run condition checker
execute if function exigence:room/node/if_increase_timer run function exigence:room/ember_shop/increase_timer
