# Execute as each item to smash toward the current average

# Create unit vector of position, pointing towards center of coins
# in * in_sc / get_length(in)
#scoreboard players set in_sc nnmath_vec 100
# Final - start
scoreboard players operation in0.x nnmath_vec = average_x CoinConvertMath
scoreboard players operation in0.y nnmath_vec = average_z CoinConvertMath
scoreboard players operation in0.x nnmath_vec -= @s X
scoreboard players operation in0.y nnmath_vec -= @s Z
#function nnmath:vec/2/set_length/exe

# Scale motion?

# Initialize/reset storage
data modify storage exigence:temp Motion set value [0.0d,0.5d,0.0d]

# Store vec out in motion
#execute store result storage exigence:temp Motion[0] double 0.001 run scoreboard players get out.x nnmath_vec
#execute store result storage exigence:temp Motion[2] double 0.001 run scoreboard players get out.y nnmath_vec
execute store result storage exigence:temp Motion[0] double 0.001 run scoreboard players get in0.x nnmath_vec
execute store result storage exigence:temp Motion[2] double 0.001 run scoreboard players get in0.y nnmath_vec

# Merge
data modify entity @s Motion set from storage exigence:temp Motion

# Schedule smash
schedule function exigence:hub/convert_money/item_smash/private/smashed 11t append