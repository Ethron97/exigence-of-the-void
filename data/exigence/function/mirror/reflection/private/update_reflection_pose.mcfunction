# Update reflection pose

## CONSTRAINTS
#   AS reflection

#====================================================================================================

# TODO do we have to set BOTH pose and rotation?
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get Reflection.Looking.Angle game.mirror.math
execute store result entity @s Rotation[1] float 1 run data get entity @p[tag=Reflecting] Rotation[1] 1
data modify entity @s Pose.Head set from storage temp Head
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]