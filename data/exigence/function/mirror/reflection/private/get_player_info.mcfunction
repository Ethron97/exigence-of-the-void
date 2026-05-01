# Store player position/rotation variables

## CONSTRAINTS
#   AS player

#====================================================================================================

execute store result score Player.X game.mirror.math run data get entity @s Pos[0] 100
execute store result score Player.Y game.mirror.math run data get entity @s Pos[1] 100
execute store result score Player.Z game.mirror.math run data get entity @s Pos[2] 100

execute store result score Player.Looking.Angle game.mirror.math run data get entity @s Rotation[0] 100
