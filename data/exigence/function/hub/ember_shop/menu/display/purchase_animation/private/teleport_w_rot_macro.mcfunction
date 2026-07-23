# Tp interpolation

## CONSTRAINTS
#   AS card display

## INPUT
#   DOUBLE distance
#   DOUBLE target_x
#   DOUBLE target_y
#   DOUBLE target_z
#   DOUBLE rot_a
#   DOUBLE rot_b

#====================================================================================================

$execute at @s facing $(target_x) $(target_y) $(target_z) positioned ^ ^ ^$(distance) rotated ~$(rot_a) ~$(rot_b) run tp @s ~ ~ ~ ~ ~
