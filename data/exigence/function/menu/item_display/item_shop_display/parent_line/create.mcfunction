# Called by menu loads to connect parent/child displays, after all displays are loaded

## CONSTRAINTS
#   AS/AT first item display
#   Second entity must have tag "DrawLineTo", and be within X blocks

## INPUT
#   STR texture - minecraft block id
#   STR/FLOAT ('1.0f') thickness - Line thickness
#   STR/FLOAT ('1.0f') offset - To center the line, should be half the thickness in float (easier to input than calculate)

#=============================================================================================================

# DEBUG
#$say drawing line $(texture) $(thickness) $(offset)

# Get distance between two entities
execute store result score x temp_coords run data get entity @s Pos[0] 100
execute store result score y temp_coords run data get entity @s Pos[1] 100
execute store result score z temp_coords run data get entity @s Pos[2] 100
execute as @e[distance=..5,tag=DrawLineTo] run function exigence:menu/item_display/item_shop_display/parent_line/private/save_coords

scoreboard players operation in0.x nnmath_vec = x temp_coords
scoreboard players operation in0.y nnmath_vec = y temp_coords
scoreboard players operation in0.z nnmath_vec = z temp_coords
scoreboard players operation in0.x nnmath_vec -= X temp_coords
scoreboard players operation in0.y nnmath_vec -= Y temp_coords
scoreboard players operation in0.z nnmath_vec -= Z temp_coords

function nnmath:vec/3/get_length/exe

execute store result storage exigence:menu length float 0.01 run scoreboard players get out nnmath_vec

# Repeat input to storage
$data modify storage exigence:menu texture set value '$(texture)'
$data modify storage exigence:menu thickness set value '$(thickness)'
$data modify storage exigence:menu offset set value '$(offset)'

# Add IDID to storage so we can connect line via id
execute store result storage exigence:menu id int 1 run scoreboard players get @s IDID

# Summon block display
execute at @s run function exigence:menu/item_display/item_shop_display/parent_line/summon_line with storage exigence:menu
 
# Remove tag
tag @e[distance=..5,tag=DrawLineTo] remove DrawLineTo
