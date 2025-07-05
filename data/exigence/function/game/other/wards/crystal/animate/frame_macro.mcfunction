# Macro rotation transformation interpolation

## CONSTRAINTS
#   AS CrystalDisplay item_display

#==============================================================================================================

# DEBUG
#say Frame macro
#$say $(q1),$(q2),$(q3),$(q4)

$data merge entity @s {start_interpolation:-1,transformation:{left_rotation:[$(ql1),$(ql2),$(ql3),$(ql4)],right_rotation:[$(qr1),$(qr2),$(qr3),$(qr4)],translation:[0.0f,0.0f,0.0f],scale:[1.0f,1.0f,1.0f]}}
