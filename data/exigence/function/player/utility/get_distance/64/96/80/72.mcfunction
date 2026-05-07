## CONSTRAINTS
#   AT location to get distance from
#   Player should be tagged with "GetDistance"

# Recurvisvely split down functions half by half

#====================================================================================================

## SWITCH
execute if entity @a[tag=GetDistance,distance=..72] run return run scoreboard players set #distance Temp 72
execute if entity @a[tag=GetDistance,distance=72..] run return run scoreboard players set #distance Temp 80
