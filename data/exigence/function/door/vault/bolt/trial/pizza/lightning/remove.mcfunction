# Removes this marker and corresponding block display

## CONSTRAINTS
#   AS lightning

#==================================================================================================

# Store id
scoreboard players operation #compare PizzaID = @s PizzaID

# Kill pizza line
execute as @e[type=minecraft:block_display,tag=PizzaLine] if score @s PizzaID = #compare PizzaID run kill @s[type=block_display,tag=PizzaLine]

# Kill lightning
kill @s[type=minecraft:marker,tag=PizzaLightning]
