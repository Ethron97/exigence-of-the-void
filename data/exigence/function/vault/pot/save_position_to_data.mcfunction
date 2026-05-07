# Copy position coordinates to entity data

## CONSTRAINTS
#   AS pot marker

#====================================================================================================

execute store result entity @s data.custom_data.pot_x int 1 run data get entity @s Pos[0] 1
execute store result entity @s data.custom_data.pot_y int 1 run data get entity @s Pos[1] 1
execute store result entity @s data.custom_data.pot_z int 1 run data get entity @s Pos[2] 1
