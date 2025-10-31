# Kill all menu related with score

## CONSTRAINTS
#   AT location

## INPUT
#   INT profile_selector_id

#========================================================================================================

$kill @e[distance=..50,scores={hub.entity.profile_selector_id=$(profile_selector_id)}]
