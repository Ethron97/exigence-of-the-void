## CONSTRAINTS
#   AT location to get distance from
#   Player should be tagged with "GetDistance"

# Recurvisvely split down functions half by half

#====================================================================================================

## SWITCH
execute if entity @a[tag=GetDistance,distance=..8] run return run scoreboard players set #distance Temp 8
execute if entity @a[tag=GetDistance,distance=8..] run return run scoreboard players set #distance Temp 16
