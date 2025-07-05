# Get dx, dy, dz
execute store result score X TempCoords run data get entity @s Pos[0] 1
execute store result score Y TempCoords run data get entity @s Pos[1] 1
execute store result score Z TempCoords run data get entity @s Pos[2] 1
scoreboard players operation OffsetX TempCoords = X TempCoords
scoreboard players operation OffsetY TempCoords = Y TempCoords
scoreboard players operation OffsetZ TempCoords = Z TempCoords
execute store result score X2 TempCoords run data get entity @e[tag=DeltaCompare,limit=1] Pos[0] 1
execute store result score Y2 TempCoords run data get entity @e[tag=DeltaCompare,limit=1] Pos[1] 1
execute store result score Z2 TempCoords run data get entity @e[tag=DeltaCompare,limit=1] Pos[2] 1
scoreboard players operation OffsetX TempCoords -= X2 TempCoords
scoreboard players operation OffsetY TempCoords -= Y2 TempCoords
scoreboard players operation OffsetZ TempCoords -= Z2 TempCoords

# Abs value
execute if score OffsetX TempCoords matches ..0 run scoreboard players operation OffsetX TempCoords *= -1 number
execute if score OffsetY TempCoords matches ..0 run scoreboard players operation OffsetY TempCoords *= -1 number
execute if score OffsetZ TempCoords matches ..0 run scoreboard players operation OffsetZ TempCoords *= -1 number

# Calculate distance
# For level 1, just add dx and dz. Who cares about y.
execute if entity @s[scores={ObjectLevel=1}] run scoreboard players operation @s EchoNodeDistance = OffsetX TempCoords
execute if entity @s[scores={ObjectLevel=1}] run scoreboard players operation @s EchoNodeDistance += OffsetZ TempCoords