# Choose direction from array

## INPUT
#   INT length (>1)
#   STORAGE valid_directions[int]

## OUTPUT
#   SCORE #chosen_direction Temp

#====================================================================================================

$execute store result score #index Random run random value 1..$(length)

## SWITCH
execute if score #index Random matches 1 run return run execute store result score #chosen_direction Temp run data get storage exigence:trial valid_directions[0]
execute if score #index Random matches 2 run return run execute store result score #chosen_direction Temp run data get storage exigence:trial valid_directions[1]
execute if score #index Random matches 3 run return run execute store result score #chosen_direction Temp run data get storage exigence:trial valid_directions[2]
execute if score #index Random matches 4 run return run execute store result score #chosen_direction Temp run data get storage exigence:trial valid_directions[3]