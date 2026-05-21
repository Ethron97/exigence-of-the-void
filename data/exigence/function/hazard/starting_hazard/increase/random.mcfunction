# Increase a random level

#====================================================================================================

execute store result score #random Random run random value 1..4

execute if score #random Random matches 1 run function exigence:hazard/starting_hazard/increase/1
execute if score #random Random matches 2 run function exigence:hazard/starting_hazard/increase/2
execute if score #random Random matches 3 run function exigence:hazard/starting_hazard/increase/3
execute if score #random Random matches 4 run function exigence:hazard/starting_hazard/increase/4