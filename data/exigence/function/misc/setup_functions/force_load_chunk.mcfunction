# Forceload a chunk (and mark it as such)

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

# Forceload
forceload add ~ ~

# Get player coordinates
execute store result score X temp_coords run data get entity @s Pos[0] 1
execute store result score Z temp_coords run data get entity @s Pos[2] 1

# Get chunk corner
scoreboard players operation #temp Temp = X temp_coords
scoreboard players operation #temp Temp %= 16 number
scoreboard players operation X temp_coords -= #temp Temp
execute store result storage exigence:temp x int 1 run scoreboard players get X temp_coords

scoreboard players operation #temp Temp = Z temp_coords
scoreboard players operation #temp Temp %= 16 number
scoreboard players operation Z temp_coords -= #temp Temp
execute store result storage exigence:temp z int 1 run scoreboard players get Z temp_coords

# Deterine y based on dimension
execute if dimension minecraft:overworld run data modify storage exigence:temp y set value -64
execute if dimension exigence:hub run data modify storage exigence:temp y set value 0
execute if dimension exigence:tutorial run data modify storage exigence:temp y set value 0
execute if dimension exigence:profile_data run data modify storage exigence:temp y set value 0

# Call subfunction
function exigence:misc/setup_functions/private/force_load_chunk_macro with storage exigence:temp