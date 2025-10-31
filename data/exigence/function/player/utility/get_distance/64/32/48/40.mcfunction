## CONSTRAINTS
#   AT location to get distance from
#   Player should be tagged with "GetDistance"

# Recurvisvely split down functions half by half

#===========================================================================================================

execute if entity @a[tag=GetDistance,distance=..40] run scoreboard players set #distance Temp 40
execute if entity @a[tag=GetDistance,distance=40..] run scoreboard players set #distance Temp 48
