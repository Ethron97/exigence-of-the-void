# Replace the berries in everyone's inventory with Ambrosia

## CONSTRAINTS
#   AS player

#=================================================================================================================

# Clear melons and store
execute store result storage exigence:temp amount int 1 run clear @s melon_slice

# Call macro
function exigence:cards/ambrosia/private/replace_berries_m with storage exigence:temp

