# Update pie

## CONSTRAINTS
#   AS block display - bar of class

## INPUT
#   FLOAT length

#=============================================================================================================

$data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.0f,0.0f,0.0f],scale:[$(length),0.125f,0.01f]}}
