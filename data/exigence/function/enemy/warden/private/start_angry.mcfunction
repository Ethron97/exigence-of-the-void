# Called when warden finishes cooling down from being angry

## CONSTRAINTS
#   AS warden

#====================================================================================================

attribute @s movement_speed modifier remove exigence:warden_shuffle
tag @s add Angry
tag @s remove Cooldown
function exigence:resources/try_generate {green:0,red:1,aqua:0}