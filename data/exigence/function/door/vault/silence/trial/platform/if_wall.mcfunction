# Check if direction from score points into wall

## CONSTRAINTS
#   AT silence platform

## INPUT
#   SCORE #random Random
#   0 = pos x, east
#   1 = pos z, south
#   2 = neg x, west
#   3 = neg z, north

## OUTPUT
#   0 = wall found (if function, proceed)
#   0 = no wall

#===============================================================================================================

execute if score #random Random matches 0 unless block ~2 ~ ~ #exigence:silence_trial run return 1
execute if score #random Random matches 0 unless block ~2 ~ ~-1 #exigence:silence_trial run return 1
execute if score #random Random matches 0 unless block ~2 ~ ~1 #exigence:silence_trial run return 1

execute if score #random Random matches 1 unless block ~ ~ ~2 #exigence:silence_trial run return 1
execute if score #random Random matches 1 unless block ~-1 ~ ~2 #exigence:silence_trial run return 1
execute if score #random Random matches 1 unless block ~1 ~ ~2 #exigence:silence_trial run return 1

execute if score #random Random matches 2 unless block ~-2 ~ ~ #exigence:silence_trial run return 1
execute if score #random Random matches 2 unless block ~-2 ~ ~-1 #exigence:silence_trial run return 1
execute if score #random Random matches 2 unless block ~-2 ~ ~1 #exigence:silence_trial run return 1

execute if score #random Random matches 3 unless block ~ ~ ~-2 #exigence:silence_trial run return 1
execute if score #random Random matches 3 unless block ~-1 ~ ~-2 #exigence:silence_trial run return 1
execute if score #random Random matches 3 unless block ~1 ~ ~-2 #exigence:silence_trial run return 1

return 0
