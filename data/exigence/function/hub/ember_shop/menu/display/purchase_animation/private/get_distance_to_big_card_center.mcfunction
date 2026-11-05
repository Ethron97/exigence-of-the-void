# Get distance from this card display to where big card go teleport to

## CONSTRAINTS
#   AS card display

## INPUT
#   custom_data target_x
#   custom_data target_y
#   custom_data target_z

#====================================================================================================

#   OUTPUTS: #distance Temp
$execute positioned $(target_x) $(target_y) $(target_z) run function exigence:misc/entity/get_distance/precision_0.1_within_10/get
scoreboard players operation @s Random = #distance Temp
