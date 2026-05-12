# Generates a single drop block

## CONSTRAINTS
#   AS bolt thrower (marker)

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Generate drop block

# Randomize rotation
# Random rotation -180..180
execute store result storage exigence:trial RotA int 1 run random value -180..180

# Randomize length
#   1/3 in inner half, 2/3 in outer half (to offset circle randomness weighting towards middle)
execute store result score #random Random run random value 1..3
execute if score #random Random matches 1 store result storage exigence:trial length float 0.1 run random value 10..30
execute if score #random Random matches 2..3 store result storage exigence:trial length float 0.1 run random value 31..50

# Call macro
function exigence:door/vault/bolt/trial/drop_block/generate_single_b with storage exigence:trial
