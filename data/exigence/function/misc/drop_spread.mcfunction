# Spread a newly spawned item in 1x1 area randomly. Called as an entity.

# Generate random offset
execute store result score OffsetX TempCoords run random value 0..1
execute store result score OffsetZ TempCoords run random value 0..1

# Prevent spread from bunching around center
execute if score OffsetX TempCoords matches 0 run execute store result score OffsetX TempCoords run random value 30..100
execute if score OffsetX TempCoords matches 1 run execute store result score OffsetX TempCoords run random value -100..-30
execute if score OffsetZ TempCoords matches 0 run execute store result score OffsetZ TempCoords run random value 30..100
execute if score OffsetZ TempCoords matches 1 run execute store result score OffsetZ TempCoords run random value -100..-30

# Get current entity coordiantes
execute store result score FinalCoordsX TempCoords run data get entity @s Pos[0] 100
execute store result score FinalCoordsZ TempCoords run data get entity @s Pos[2] 100

# Apply offset to get final coordinates
scoreboard players operation FinalCoordsX TempCoords += OffsetX TempCoords
scoreboard players operation FinalCoordsZ TempCoords += OffsetZ TempCoords

# Put it back into storage, scaled down 100
execute store result storage temp TempCoords.FinalCoordsX double 0.01 run scoreboard players get FinalCoordsX TempCoords
execute store result storage temp TempCoords.FinalCoordsZ double 0.01 run scoreboard players get FinalCoordsZ TempCoords

# Update entity coordinates from storage
data modify entity @s Pos[0] set from storage temp TempCoords.FinalCoordsX
data modify entity @s Pos[2] set from storage temp TempCoords.FinalCoordsZ