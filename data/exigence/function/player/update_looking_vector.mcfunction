# Create vector from the player's direction by summoning a marker X blocks in front of the player
#   Call as player

# If there isn't a lookingvector Marker, summon one
execute at @s unless entity @e[type=minecraft:marker,tag=LookingVector] run summon minecraft:marker ^ ^ ^ {Duration:999999,Tags:["LookingVector"]}

# Summon marker
execute as @s at @s anchored eyes positioned ^ ^ ^3 run tp @e[type=minecraft:marker,tag=LookingVector] ^ ^ ^

# Update current coords
execute as @s run function exigence:misc/update_coords

# Store marker position in data
# Final - start
execute store result score in0.x nnmath_vec run data get entity @e[type=minecraft:marker,tag=LookingVector,limit=1] Pos[0] 100
execute store result score in0.y nnmath_vec run data get entity @e[type=minecraft:marker,tag=LookingVector,limit=1] Pos[1] 100
execute store result score in0.z nnmath_vec run data get entity @e[type=minecraft:marker,tag=LookingVector,limit=1] Pos[2] 100

scoreboard players operation in0.x nnmath_vec -= @s X
scoreboard players operation in0.y nnmath_vec -= @s Y
scoreboard players operation in0.z nnmath_vec -= @s Z

# Initialize/reset storage
data modify storage exigence:temp Motion set value [0.0d,0.0d,0.0d]

# Store vec out in motion
execute store result storage exigence:temp Motion[0] double 0.001 run scoreboard players get in0.x nnmath_vec
execute store result storage exigence:temp Motion[1] double 0.001 run scoreboard players get in0.y nnmath_vec
execute store result storage exigence:temp Motion[2] double 0.001 run scoreboard players get in0.z nnmath_vec
