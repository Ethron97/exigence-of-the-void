# Randomize circle position of PosA

#+======================================================================================================

# Random rotation 20..340, to prevent clumping
execute store result storage exigence:trial RotA int 1 run random value 40..320

# Call macro
execute as @e[type=minecraft:marker,tag=FlowCenter] run function exigence:door/vault/flow/trial/random_pos/rim_macro with storage exigence:trial
