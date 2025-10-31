# Called by ping functions

## CONSTRAINTS
#   AS item to vibrate
#   AT starting position
#   ASSUMES player starting at has GetDistance tag

#================================================================================================================

# Store position of vibration target block as integer array
execute store result storage exigence:vibration x int 1 run data get entity @s Pos[0] 1
execute store result storage exigence:vibration y int 1 run data get entity @s Pos[1] 1
execute store result storage exigence:vibration z int 1 run data get entity @s Pos[2] 1

# Calculate distance
#   Outputs score "#distance Temp"
function exigence:player/utility/get_distance/64

scoreboard players operation #distance Temp *= 2 number

execute store result storage exigence:vibration ticks int 1 run scoreboard players get #distance Temp

# Call macro
execute positioned ~ ~1.0 ~ run function exigence:player/effects/detection/vibrate/macro with storage exigence:vibration
