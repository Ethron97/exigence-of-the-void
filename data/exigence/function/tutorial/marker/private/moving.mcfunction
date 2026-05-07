# Handle marker-end move functions from /setup/move_marker

## CONSTRAINTS
#   AT position to be moved to (aligned xyz)
#   AS marker

#====================================================================================================

# Hide old displays if applicable
function exigence:tutorial/marker/hide

tp @s ~0.5 ~ ~0.5

# Show new displays if debug is on
execute as @s at @s if score toggle.tutorial debug matches 1 run function exigence:tutorial/marker/show
