# Give berry motion after picking it

## CONSTRAINTS
#   AS berry

#====================================================================================================

function exigence:misc/update_coords

# Get target player X/Y
execute store result score in0.x nnmath_vec run data get entity @p[tag=Interacting,distance=..10] Pos[0] 100
execute store result score in0.y nnmath_vec run data get entity @p[tag=Interacting,distance=..10] Pos[2] 100

# Final - start
scoreboard players operation in0.x nnmath_vec -= @s X
scoreboard players operation in0.y nnmath_vec -= @s Z
#function nnmath:vec/2/set_length/exe

# Scale motion?

# Initialize/reset storage
data modify storage exigence:temp Motion set value [0.0d,0.1d,0.0d]
#execute store result storage exigence:temp Motion[1] double 1.0 run data get entity @s Motion[1]

# Store vec out in motion
#execute store result storage exigence:temp Motion[0] double 0.001 run scoreboard players get out.x nnmath_vec
#execute store result storage exigence:temp Motion[2] double 0.001 run scoreboard players get out.y nnmath_vec
execute store result storage exigence:temp Motion[0] double 0.001 run scoreboard players get in0.x nnmath_vec
execute store result storage exigence:temp Motion[2] double 0.001 run scoreboard players get in0.y nnmath_vec

# Merge
data modify entity @s Motion set from storage exigence:temp Motion

data modify entity @s PickupDelay set value 0