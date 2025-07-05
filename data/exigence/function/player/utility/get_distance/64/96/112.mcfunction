## CONSTRAINTS
#   AT location to get distance from
#   Player should be tagged with "GetDistance"

# Recurvisvely split down functions half by half

#===========================================================================================================

execute if entity @a[tag=GetDistance,distance=..112] run function exigence:player/utility/get_distance/64/96/112/104
execute if entity @a[tag=GetDistance,distance=112..] run function exigence:player/utility/get_distance/64/96/112/120
