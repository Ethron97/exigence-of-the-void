## CONSTRAINTS
#   AS player

#======================================================================================================


# Add local tag
tag @s add Reflecting

# Calculate angle from player normal to the "mirror"
execute as @e[type=minecraft:armor_stand,tag=Rotation,tag=Active] at @s anchored eyes facing entity @p[tag=Reflecting] eyes run tp @s ~ ~ ~ ~ ~

execute as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] store result score Mirror.Node.Angle game.mirror.math run data get entity @s Rotation[0] 100
execute as @e[type=minecraft:armor_stand,tag=Rotation,tag=Active] store result score Player.Angle game.mirror.math run data get entity @s Rotation[0] 100

scoreboard players operation Angle.Difference game.mirror.math = Mirror.Node.Angle game.mirror.math
scoreboard players operation Angle.Difference game.mirror.math -= Player.Angle game.mirror.math

# Reflection angle is the direction that the Reflection is in relation to the mirrornode
scoreboard players operation Reflection.Angle game.mirror.math = Mirror.Node.Angle game.mirror.math
scoreboard players operation Reflection.Angle game.mirror.math += Angle.Difference game.mirror.math
execute as @e[type=minecraft:armor_stand,tag=RotationReflection,tag=Active] store result entity @s Rotation[0] float 0.01 run scoreboard players get Reflection.Angle game.mirror.math

#execute as @e[name=RotationReflection] store result entity @s Rotation[1] float 1 run data get entity @e[name=Rotation,limit=1] Rotation[1] 1
execute as @e[type=minecraft:armor_stand,tag=RotationReflection,tag=Active] run data modify entity @s Rotation[1] set value 0.0f

# =======================================================================================================================
# Update Reflection looking angle
execute store result score Player.Looking.Angle game.mirror.math run data get entity @s Rotation[0] 100
scoreboard players operation LookingAngle.Difference game.mirror.math = Mirror.Node.Angle game.mirror.math
scoreboard players operation LookingAngle.Difference game.mirror.math -= Player.Looking.Angle game.mirror.math

scoreboard players operation Reflection.Looking.Angle game.mirror.math = Mirror.Node.Angle game.mirror.math
scoreboard players operation Reflection.Looking.Angle game.mirror.math += LookingAngle.Difference game.mirror.math
execute as @e[type=villager,tag=Reflection,tag=Active] store result entity @s Rotation[0] float 0.01 run scoreboard players get Reflection.Looking.Angle game.mirror.math
execute as @e[type=villager,tag=Reflection,tag=Active] store result entity @s Rotation[1] float 1 run data get entity @p[tag=Reflecting] Rotation[1] 1
execute as @e[type=villager,tag=Reflection,tag=Active] run data modify entity @s Pose.Head set from storage temp Head
execute as @e[type=villager,tag=Reflection,tag=Active] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]

# =======================================================================================================================
# Get distance between player and mirrornode
execute store result score Player.X game.mirror.math run data get entity @s Pos[0] 100
execute store result score Player.Y game.mirror.math run data get entity @s Pos[1] 100
execute store result score Player.Z game.mirror.math run data get entity @s Pos[2] 100
execute as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] run execute store result score Node.X game.mirror.math run data get entity @s Pos[0] 100
execute as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] run execute store result score Node.Y game.mirror.math run data get entity @s Pos[1] 100
execute as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] run execute store result score Node.Z game.mirror.math run data get entity @s Pos[2] 100

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
# Update reflection position
data modify storage exigence:mirror type set value villager
function exigence:mirror/tp_reflection with storage exigence:mirror

# Remove local tag
tag @s remove Reflecting
