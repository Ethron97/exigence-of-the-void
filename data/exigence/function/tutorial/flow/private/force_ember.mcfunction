# Ensures player has an ember in their inventory

## CONSTRAINTS
#   AS PLayer

#=============================================================================================================

execute store result score #temp Tutorial run clear @s blaze_powder 0

execute if score #temp Tutorial matches 0 run function exigence:player/give/ember
