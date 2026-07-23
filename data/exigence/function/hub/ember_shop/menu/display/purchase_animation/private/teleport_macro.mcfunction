# Tp interpolation

## CONSTRAINTS
#   AS card display

## INPUT
#   DOUBLE distance
#   DOUBLE target_x
#   DOUBLE target_y
#   DOUBLE target_z

#====================================================================================================

$execute at @s facing $(target_x) $(target_y) $(target_z) run tp @s ^ ^ ^$(distance)
