## CONSTRAINTS
#   AT location to get distance from
#   Player should be tagged with "GetDistance"

# Recurvisvely split down functions half by half

#===========================================================================================================

execute if entity @a[tag=GetDistance,distance=..88] run scoreboard players set #distance Temp 88
execute if entity @a[tag=GetDistance,distance=88..] run scoreboard players set #distance Temp 96
