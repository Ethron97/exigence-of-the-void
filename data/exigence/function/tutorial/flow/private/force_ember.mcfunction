# Ensures player has an ember in their inventory

## CONSTRAINTS
#   AS PLayer

#====================================================================================================

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Force ember

execute store result score #temp Tutorial run clear @s blaze_powder 0

execute if score #temp Tutorial matches 0 run function exigence:player/give/ember
