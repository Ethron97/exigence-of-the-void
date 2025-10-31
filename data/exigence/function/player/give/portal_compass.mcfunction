# Points to exit portals, specifically for level 4 runs where the exit portal moves to a random location on level 2
# Only called on all echos picked up

## CONSTRAINTS
#   AS exit

#======================================================================================================

# Get coordinates
execute store result score x temp_coords run data get entity @s Pos[0]
execute store result score y temp_coords run data get entity @s Pos[1]
execute store result score z temp_coords run data get entity @s Pos[2]
execute store result storage exigence:compass x int 1 run scoreboard players get x temp_coords
execute store result storage exigence:compass y int 1 run scoreboard players get y temp_coords
execute store result storage exigence:compass z int 1 run scoreboard players get z temp_coords
data modify storage exigence:compass name set value {text:"Portal Compass",color:"dark_purple",italic:false}
data modify storage exigence:compass lore set value []
data modify storage exigence:compass lore append value [{text:"Points towards exit portal",color:"gray",italic:false}]
data modify storage exigence:compass lore append value [{text:"(Soulbound)",color:"dark_gray",italic:false}]

# Give dummy score that is different than return compasses so it doesn't get cleared
data modify storage exigence:compass echo_id set value -2

# Call sub-function
execute as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/give/compass with storage exigence:compass
