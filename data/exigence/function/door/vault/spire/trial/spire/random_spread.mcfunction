# Create and store random arc and length in storage for macro calls

#=============================================================================================================

# Random rotation -180..180
execute store result storage exigence:trial RotA int 1 run random value -180..180

# Random distance
execute store result score #random Random run random value 1..6
#execute if score #random Random matches 1 run data modify storage exigence:trial length set value 1
execute if score #random Random matches 1..4 run data modify storage exigence:trial length set value 2
execute if score #random Random matches 5..6 run data modify storage exigence:trial length set value 3
