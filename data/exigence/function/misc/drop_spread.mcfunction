# Spread a newly spawned item in 1x1 area randomly. Called as an entity.

# Generate random offset
execute store result score Offset.X temp_coords run random value 0..1
execute store result score Offset.Z temp_coords run random value 0..1

# Prevent spread from bunching around center
execute if score Offset.X temp_coords matches 0 run execute store result score Offset.X temp_coords run random value 30..100
execute if score Offset.X temp_coords matches 1 run execute store result score Offset.X temp_coords run random value -100..-30
execute if score Offset.Z temp_coords matches 0 run execute store result score Offset.Z temp_coords run random value 30..100
execute if score Offset.Z temp_coords matches 1 run execute store result score Offset.Z temp_coords run random value -100..-30

# Get current entity coordiantes
execute store result score FinalCoords.X temp_coords run data get entity @s Pos[0] 100
execute store result score FinalCoords.Z temp_coords run data get entity @s Pos[2] 100

# Apply offset to get final coordinates
scoreboard players operation FinalCoords.X temp_coords += Offset.X temp_coords
scoreboard players operation FinalCoords.Z temp_coords += Offset.Z temp_coords

# Put it back into storage, scaled down 100
execute store result storage temp TempCoords.FinalCoordsX double 0.01 run scoreboard players get FinalCoords.X temp_coords
execute store result storage temp TempCoords.FinalCoordsZ double 0.01 run scoreboard players get FinalCoords.Z temp_coords

# Update entity coordinates from storage
data modify entity @s Pos[0] set from storage temp TempCoords.FinalCoordsX
data modify entity @s Pos[2] set from storage temp TempCoords.FinalCoordsZ