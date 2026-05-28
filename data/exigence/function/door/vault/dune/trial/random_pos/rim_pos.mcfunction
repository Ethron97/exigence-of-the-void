# Randomize circle position of PosA

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

# Random rotation 20..340, to prevent clumping
execute store result storage exigence:trial RotA int 1 run random value 20..340

# Random second rotation
execute store result storage exigence:trial RotB int 1 run random value -35..35

# Randomize start height
execute store result score random Random run random value -80..80
execute store result storage exigence:trial height double 0.01 run scoreboard players get random Random

# Looking = inverse scaled of the height
scoreboard players operation random Random *= -1 number
execute store result storage exigence:trial RotC double 0.2 run scoreboard players get random Random

# Call macro
execute as @e[type=minecraft:marker,tag=DuneCenter,distance=..24] run function exigence:door/vault/dune/trial/random_pos/rim_macro with storage exigence:trial
