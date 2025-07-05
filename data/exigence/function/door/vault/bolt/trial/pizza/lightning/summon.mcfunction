# Called by new_pizza

## CONSTRAINTS
#   At location (should be at Marker A)

## INPUT
#   FLOAT[] Rotation - (should be from Marker A)

#==================================================================================================

# DEBUG
#say New lightning

$summon minecraft:marker ~ ~ ~ {Tags:["PizzaLightning","NewPizzaLightning"],Rotation:$(Rotation)}

scoreboard players set @e[type=marker,tag=NewPizzaLightning] PizzaTimer 21
scoreboard players operation @e[type=marker,tag=NewPizzaLightning] PizzaID = #next PizzaID

# Copy length
#   Assumes line.create was called just before this function
scoreboard players operation @e[type=marker,tag=NewPizzaLightning] PizzaLength = out nnmath_vec

tag @e[type=marker,tag=NewPizzaLightning] remove NewPizzaLightning
