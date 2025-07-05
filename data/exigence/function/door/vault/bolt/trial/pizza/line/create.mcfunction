# Called by menu loads to connect parent/child displays, after all displays are loaded

## CONSTRAINTS
#   AS Marker with tag PizzaA
#   Second Marker with tag PizzaB

#=============================================================================================================

# DEBUG
#say creating new pizza line

# Teleport facing second entity
execute as @e[type=minecraft:marker,tag=PizzaA] at @s anchored eyes facing entity @e[type=minecraft:marker,tag=PizzaB,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# Get distance between two entities
execute store result score x TempCoords run data get entity @s Pos[0] 100
execute store result score y TempCoords run data get entity @s Pos[2] 100
execute as @e[type=minecraft:marker,tag=PizzaB] run execute store result score X TempCoords run data get entity @s Pos[0] 100
execute as @e[type=minecraft:marker,tag=PizzaB] run execute store result score Y TempCoords run data get entity @s Pos[2] 100

# Get difference of two positions for vector centered on origin
scoreboard players operation in0.x nnmath_vec = x TempCoords
scoreboard players operation in0.y nnmath_vec = y TempCoords
scoreboard players operation in0.x nnmath_vec -= X TempCoords
scoreboard players operation in0.y nnmath_vec -= Y TempCoords

# Takes x and y as inputs, get length of difference vector
function nnmath:vec/2/get_length/exe

# Set data values
data modify storage exigence:trial Rotation set from entity @e[type=minecraft:marker,tag=PizzaA,limit=1] Rotation
execute store result storage exigence:trial length float 0.01 run scoreboard players get out nnmath_vec
data modify storage exigence:trial texture set value 'minecraft:light_blue_stained_glass'
data modify storage exigence:trial thickness set value '1.0f'
data modify storage exigence:trial offset set value '0.5f'

# Summon block display
execute at @s run function exigence:door/vault/bolt/trial/pizza/line/summon_macro with storage exigence:trial
