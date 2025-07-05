# Randomize circle position of PosA

#+======================================================================================================

# Random rotation 20..340, to prevent clumping
execute store result storage exigence:trial RotA int 1 run random value 20..340

# Random second rotation
execute store result storage exigence:trial RotB int 1 run random value -35..35

# Call macro
execute as @e[type=minecraft:marker,tag=DuneCenter] run function exigence:door/vault/dune/trial/random_pos/rim_macro with storage exigence:trial
