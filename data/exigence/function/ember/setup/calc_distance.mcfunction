# Get dx, dy, dz
execute store result score X temp_coords run data get entity @s Pos[0] 1
execute store result score Y temp_coords run data get entity @s Pos[1] 1
execute store result score Z temp_coords run data get entity @s Pos[2] 1
scoreboard players operation Offset.X temp_coords = X temp_coords
scoreboard players operation Offset.Y temp_coords = Y temp_coords
scoreboard players operation Offset.Z temp_coords = Z temp_coords
execute store result score X2 temp_coords run data get entity @e[tag=DeltaCompare,limit=1] Pos[0] 1
execute store result score Y2 temp_coords run data get entity @e[tag=DeltaCompare,limit=1] Pos[1] 1
execute store result score Z2 temp_coords run data get entity @e[tag=DeltaCompare,limit=1] Pos[2] 1
scoreboard players operation Offset.X temp_coords -= X2 temp_coords
scoreboard players operation Offset.Y temp_coords -= Y2 temp_coords
scoreboard players operation Offset.Z temp_coords -= Z2 temp_coords

# Abs value
execute if score Offset.X temp_coords matches ..0 run scoreboard players operation Offset.X temp_coords *= -1 number
execute if score Offset.Y temp_coords matches ..0 run scoreboard players operation Offset.Y temp_coords *= -1 number
execute if score Offset.Z temp_coords matches ..0 run scoreboard players operation Offset.Z temp_coords *= -1 number

# Calculate distance
# For level 1, just add dx and dz. Who cares about y.
execute if entity @s[scores={ObjectLevel=1}] run scoreboard players operation @s EchoNodeDistance = Offset.X temp_coords
execute if entity @s[scores={ObjectLevel=1}] run scoreboard players operation @s EchoNodeDistance += Offset.Z temp_coords