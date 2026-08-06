# Called by node/try_increase_timer

## CONSTRAINTS
#   AS room node

#====================================================================================================

## KNOCK
# Gets knocked when someone fails to join because all profile selectors are full

# Run condition checker
execute if function exigence:room/node/if_increase_timer run function exigence:room/profile_selector/increase_timer
