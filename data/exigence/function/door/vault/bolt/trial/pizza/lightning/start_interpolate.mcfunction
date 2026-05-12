# Calls when trial.object.timer is 19 (1 tick after spawning) to initialize line intepolating

## CONSTRAINTS
#   AS lightning

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 4.. run say (D4) Start interolate

# Get line from trial.object.pizza_id
scoreboard players operation #compare trial.object.pizza_id = @s trial.object.pizza_id

# Store length in data
execute store result storage exigence:trial length float 0.01 run scoreboard players get @s trial.object.pizza_length

# Start grow animation
execute as @e[type=minecraft:block_display,tag=PizzaLine,distance=..24] if score @s trial.object.pizza_id = #compare trial.object.pizza_id run function exigence:door/vault/bolt/trial/pizza/line/interpolate with storage exigence:trial
