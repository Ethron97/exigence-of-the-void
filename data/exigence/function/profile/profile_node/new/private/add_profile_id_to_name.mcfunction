# Add profile id to name for debug

## CONSTRAINTS
#   AS profile node

## INPUT
#   INT profile_id
#   STR color

#====================================================================================================

$data modify entity @s CustomName.extra append value {text:" $(profile_id)",color:green}