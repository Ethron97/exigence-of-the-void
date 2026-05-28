# Randomize circle position of PosA

## CONSTRAINTS
#   AS/AT trial node

#+======================================================================================================

# Random rotation 20..340, to prevent clumping
execute store result score #random Random run random value 20..160
execute store result score #temp Temp run random value 0..1
execute if score #temp Temp matches 0 run scoreboard players operation #random Random *= -1 number
execute store result storage exigence:trial RotA int 1 run scoreboard players get #random Random

# Call macro
execute as @e[type=minecraft:marker,tag=FlowCenter,distance=..1] run function exigence:door/vault/flow/trial/random_pos/rim_macro with storage exigence:trial
