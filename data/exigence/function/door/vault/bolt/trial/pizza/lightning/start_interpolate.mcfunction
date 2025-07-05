# Calls when PizzaTimer is 19 (1 tick after spawning) to initialize line intepolating

## CONSTRAINTS
#   AS lightning

#===========================================================================================================

# DEBUG
#say Start interolate

# Get line from pizzaid
scoreboard players operation #compare PizzaID = @s PizzaID

# Store length in data
execute store result storage exigence:trial length float 0.01 run scoreboard players get @s PizzaLength

# Start grow animation
execute as @e[type=minecraft:block_display,tag=PizzaLine] if score @s PizzaID = #compare PizzaID run function exigence:door/vault/bolt/trial/pizza/line/interpolate with storage exigence:trial
