# Update reflection

## CONSTRAINTS
#   AS player

#=====================================================================================================

# DEBUG
#say Reflecting

# Add local tag
tag @s add Reflecting

# Update equipment
execute as @e[type=minecraft:armor_stand,tag=Reflection,tag=Active] run function exigence:mirror/reflection/private/match_equipment

# Mirror particles
execute at @e[type=minecraft:armor_stand,tag=Reflection,tag=Active] run particle minecraft:smoke ~ ~0.6 ~ 0.1 0.2 0.1 0 5
#execute at @e[type=minecraft:armor_stand,tag=Reflection,tag=Active] run particle minecraft:effect ~ ~ ~ 0 0 0 0.01 2

# =======================================================================================================================
# Calculate angle from player normal to the "mirror"
execute as @e[type=minecraft:armor_stand,tag=Rotation,tag=Active] at @s anchored eyes facing entity @p[tag=Reflecting] eyes run tp @s ~ ~ ~ ~ ~

# Copy rotation data scores
execute as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] store result score MirrorNodeAngle MirrorMath2 run data get entity @s Rotation[0] 100
execute as @e[type=minecraft:armor_stand,tag=Rotation,tag=Active] store result score PlayerAngle MirrorMath2 run data get entity @s Rotation[0] 100

# Reflect the angle
scoreboard players operation #AngleDifference MirrorMath2 = MirrorNodeAngle MirrorMath2
scoreboard players operation #AngleDifference MirrorMath2 -= PlayerAngle MirrorMath2
scoreboard players operation AngleDifference MirrorMath2 = #AngleDifference MirrorMath2

# Reflection angle is the direction that the Reflection is in relation to the mirrornode
scoreboard players operation ReflectionAngle MirrorMath2 = MirrorNodeAngle MirrorMath2
scoreboard players operation ReflectionAngle MirrorMath2 += AngleDifference MirrorMath2
execute as @e[type=minecraft:armor_stand,tag=RotationReflection,tag=Active] store result entity @s Rotation[0] float 0.01 run scoreboard players get ReflectionAngle MirrorMath2

#execute as @e[name=RotationReflection] store result entity @s Rotation[1] float 1 run data get entity @e[name=Rotation,limit=1] Rotation[1] 1
execute as @e[type=minecraft:armor_stand,tag=RotationReflection,tag=Active] run data modify entity @s Rotation[1] set value 0.0f

# =======================================================================================================================
# Update Reflection looking angle
execute as @s store result score PlayerLookingAngle MirrorMath2 run data get entity @s Rotation[0] 100
scoreboard players operation #LookingAngleDifference MirrorMath2 = MirrorNodeAngle MirrorMath2
scoreboard players operation #LookingAngleDifference MirrorMath2 -= PlayerLookingAngle MirrorMath2
scoreboard players operation LookingAngleDifference MirrorMath2 = #LookingAngleDifference MirrorMath2

scoreboard players operation ReflectionLookingAngle MirrorMath2 = MirrorNodeAngle MirrorMath2
scoreboard players operation ReflectionLookingAngle MirrorMath2 += LookingAngleDifference MirrorMath2
execute as @e[type=minecraft:armor_stand,tag=Reflection,tag=Active] store result entity @s Rotation[0] float 0.01 run scoreboard players get ReflectionLookingAngle MirrorMath2
execute as @e[type=minecraft:armor_stand,tag=Reflection,tag=Active] store result entity @s Rotation[1] float 1 run data get entity @p[tag=Reflecting] Rotation[1] 1
execute as @e[type=minecraft:armor_stand,tag=Reflection,tag=Active] run data modify entity @s Pose.Head set from storage temp Head
execute as @e[type=minecraft:armor_stand,tag=Reflection,tag=Active] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]

# =======================================================================================================================
# Get distance between player and mirrornode
execute store result score PlayerX MirrorMath2 run data get entity @s Pos[0] 100
execute store result score PlayerY MirrorMath2 run data get entity @s Pos[1] 100
execute store result score PlayerZ MirrorMath2 run data get entity @s Pos[2] 100
execute as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] run execute store result score NodeX MirrorMath2 run data get entity @s Pos[0] 100
execute as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] run execute store result score NodeY MirrorMath2 run data get entity @s Pos[1] 100
execute as @e[type=minecraft:armor_stand,tag=MirrorNode,tag=Active] run execute store result score NodeZ MirrorMath2 run data get entity @s Pos[2] 100

scoreboard players operation in0.x nnmath_vec = NodeX MirrorMath2
scoreboard players operation in0.y nnmath_vec = NodeZ MirrorMath2
scoreboard players operation in0.z nnmath_vec = NodeY MirrorMath2
scoreboard players operation in0.x nnmath_vec -= PlayerX MirrorMath2
scoreboard players operation in0.y nnmath_vec -= PlayerZ MirrorMath2
scoreboard players operation in0.z nnmath_vec -= PlayerY MirrorMath2

function nnmath:vec/2/get_length/exe

scoreboard players operation distance MirrorMath2 = out nnmath_vec

execute store result storage exigence:mirror distance double 0.01 run scoreboard players get out nnmath_vec
scoreboard players operation in0.z nnmath_vec *= #-1 nnmath_vec
execute store result storage exigence:mirror height double 0.01 run scoreboard players get in0.z nnmath_vec

# =======================================================================================================================
# Update reflection position
data modify storage exigence:mirror type set value armor_stand
function exigence:mirror/tp_reflection with storage exigence:mirror


# Remove local tag
tag @s remove Reflecting
