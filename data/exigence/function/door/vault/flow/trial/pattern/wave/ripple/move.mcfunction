# Move forward based on speed

## CONSTRAINTS
#   AS/AT ripple

#====================================================================================================

execute if score @s trial.object.speed matches 1 run return run tp @s ^ ^ ^0.04
execute if score @s trial.object.speed matches 2 run return run tp @s ^ ^ ^0.06
execute if score @s trial.object.speed matches 3 run return run tp @s ^ ^ ^0.08
execute if score @s trial.object.speed matches 4..5 run return run tp @s ^ ^ ^0.04
