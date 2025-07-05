## CONSTRAINTS
#   AT location to get distance from
#   Player should be tagged with "GetDistance"

# Recurvisvely split down functions half by half

#===========================================================================================================

execute if entity @a[tag=GetDistance,distance=..104] run scoreboard players set distance Temp 104
execute if entity @a[tag=GetDistance,distance=104..] run scoreboard players set distance Temp 112
