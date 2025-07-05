# Called when old interpolation ends

## CONSTRAINTS
#   AS CrystalDisplay item_display

#============================================================================================================

# DEBUG
#say New frame

# Generate random right rotation quaternion frm 0.2..0.7
#   Will rotate and slightly scale, it's a feature

execute store result storage exigence:conduit qr1 float 0.01 run random value 20..70
execute store result storage exigence:conduit qr2 float 0.01 run random value 20..70
execute store result storage exigence:conduit qr3 float 0.01 run random value 20..70
execute store result storage exigence:conduit qr4 float 0.01 run random value 20..70

execute store result storage exigence:conduit ql1 float 0.01 run random value 20..70
execute store result storage exigence:conduit ql2 float 0.01 run random value 20..70
execute store result storage exigence:conduit ql3 float 0.01 run random value 20..70
execute store result storage exigence:conduit ql4 float 0.01 run random value 20..70

# Call macro
function exigence:game/other/wards/crystal/animate/frame_macro with storage exigence:conduit
