# Called by new_pizza

## CONSTRAINTS
#   At location (should be at Marker A)

## INPUT
#   FLOAT[] Rotation - (should be from Marker A)

#====================================================================================================

# DEBUG
execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) New lightning

$summon minecraft:marker ~ ~ ~ {Tags:["PizzaLightning","NewPizzaLightning"],Rotation:$(Rotation),CustomName:{text:"Marker | PizzaLightning"}}

scoreboard players set @e[type=minecraft:marker,tag=NewPizzaLightning] PizzaTimer 21
scoreboard players operation @e[type=minecraft:marker,tag=NewPizzaLightning] PizzaID = #next PizzaID

# Copy length
#   Assumes line.create was called just before this function
scoreboard players operation @e[type=minecraft:marker,tag=NewPizzaLightning] PizzaLength = out nnmath_vec

tag @e[type=minecraft:marker,tag=NewPizzaLightning] remove NewPizzaLightning
