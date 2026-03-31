# Kill all menu related with score

## CONSTRAINTS
#   AT location

## INPUT
#   INT profile_selector_id

#====================================================================================================

$kill @e[scores={hub.entity.profile_selector_id=$(profile_selector_id)},distance=..50]
