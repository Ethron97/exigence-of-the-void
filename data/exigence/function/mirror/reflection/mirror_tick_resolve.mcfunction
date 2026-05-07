# Update reflection

## CONSTRAINTS
#   AS/AT mirror node

## INPUT
#   TAGGED player = Reflecting
#   SCORE Player.X game.mirror.math
#   SCORE Player.Y game.mirror.math
#   SCORE Player.Z game.mirror.math
#   SCORE Player.Looking.Angle game.mirror.math
#   SCORE #compare game.player.player_number

#====================================================================================================

execute if score toggle.mirror debug matches 1 if score debug.level debug matches 5.. run say (D5) Reflecting

# Calculate angle from player normal to the "mirror"
execute as @e[type=minecraft:armor_stand,tag=Rotation,distance=..1] at @s anchored eyes facing entity @p[tag=Reflecting,distance=..30] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=Rotation,distance=..1] at @s store result score Player.Angle game.mirror.math run data get entity @s Rotation[0] 100

execute store result score Mirror.Node.Angle game.mirror.math run data get entity @s Rotation[0] 100

# Reflect the angle
scoreboard players operation Angle.Difference game.mirror.math = Mirror.Node.Angle game.mirror.math
scoreboard players operation Angle.Difference game.mirror.math -= Player.Angle game.mirror.math

# Reflection angle is the direction that the Reflection is in relation to the mirrornode
scoreboard players operation Reflection.Angle game.mirror.math = Mirror.Node.Angle game.mirror.math
scoreboard players operation Reflection.Angle game.mirror.math += Angle.Difference game.mirror.math

# Store for macro tp call
execute store result storage exigence:mirror rotation float 0.01 run scoreboard players get Reflection.Angle game.mirror.math

# =======================================================================================================================
# Get player looking, reflect, load to reflection armorstand
scoreboard players operation LookingAngle.Difference game.mirror.math = Mirror.Node.Angle game.mirror.math
scoreboard players operation LookingAngle.Difference game.mirror.math -= Player.Looking.Angle game.mirror.math

scoreboard players operation Reflection.Looking.Angle game.mirror.math = Mirror.Node.Angle game.mirror.math
scoreboard players operation Reflection.Looking.Angle game.mirror.math += LookingAngle.Difference game.mirror.math

# Pose gets updated on tp

# =======================================================================================================================
# Get distance between player and mirrornode
#   Player position already retrieved before this function
execute store result score Node.X game.mirror.math run data get entity @s Pos[0] 100
execute store result score Node.Y game.mirror.math run data get entity @s Pos[1] 100
execute store result score Node.Z game.mirror.math run data get entity @s Pos[2] 100

# Y and Z planes are flipped in the vec module
scoreboard players operation in0.x nnmath_vec = Node.X game.mirror.math
scoreboard players operation in0.y nnmath_vec = Node.Z game.mirror.math
scoreboard players operation in0.z nnmath_vec = Node.Y game.mirror.math
scoreboard players operation in0.x nnmath_vec -= Player.X game.mirror.math
scoreboard players operation in0.y nnmath_vec -= Player.Z game.mirror.math
scoreboard players operation in0.z nnmath_vec -= Player.Y game.mirror.math

function nnmath:vec/2/get_length/exe

scoreboard players operation final.distance game.mirror.math = out nnmath_vec

execute store result storage exigence:mirror distance double 0.01 run scoreboard players get out nnmath_vec
scoreboard players operation in0.z nnmath_vec *= #-1 nnmath_vec
execute store result storage exigence:mirror height double 0.01 run scoreboard players get in0.z nnmath_vec

# =======================================================================================================================
# Update reflection position / pose / equipment
execute at @s as @e[type=minecraft:armor_stand,tag=Reflection] if score @s game.entity.player_number = #compare game.player.player_number run function exigence:mirror/tp_reflection with storage exigence:mirror
