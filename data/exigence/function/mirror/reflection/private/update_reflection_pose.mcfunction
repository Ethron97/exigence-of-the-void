# Update reflection pose

## CONSTRAINTS
#   AS reflection (mannequin)

#====================================================================================================

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get Reflection.Looking.Angle game.mirror.math
execute store result entity @s Rotation[1] float 1 run data get entity @p[tag=Reflecting] Rotation[1] 1

 # Update pose
execute if entity @p[tag=Reflecting,predicate=exigence:player/no_pose] run return run data modify entity @s pose set value 'standing'
 execute if entity @p[tag=Reflecting,predicate=exigence:player/sneaking] run return run data modify entity @s pose set value 'crouching'
 execute if entity @p[tag=Reflecting,predicate=exigence:player/fall_flying] run return run data modify entity @s pose set value 'fall_flying'
 execute if entity @p[tag=Reflecting,predicate=exigence:player/swimming] run return run data modify entity @s pose set value 'swimming'