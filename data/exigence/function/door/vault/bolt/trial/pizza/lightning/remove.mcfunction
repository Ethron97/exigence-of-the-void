# Removes this marker and corresponding block display

## CONSTRAINTS
#   AS lightning

#====================================================================================================

# Store id
scoreboard players operation #compare trial.object.pizza_id = @s trial.object.pizza_id

# Kill pizza line
execute at @s as @e[type=minecraft:block_display,tag=PizzaLine,distance=..24] if score @s trial.object.pizza_id = #compare trial.object.pizza_id run kill @s[type=minecraft:block_display,tag=PizzaLine]

# Kill lightning
kill @s[type=minecraft:marker,tag=PizzaLightning]
