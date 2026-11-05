# Get distance to 0.1 accuracy within 10 blocks

## CONSTRAINTS
#   AS entity
#   AT distance to calculate to

#====================================================================================================

scoreboard players set #distance Temp -1
## SWITCH
execute if entity @s[distance=..1] run return run function exigence:misc/entity/get_distance/precision_0.1_within_10/get_1
execute if entity @s[distance=..2] run return run function exigence:misc/entity/get_distance/precision_0.1_within_10/get_2
execute if entity @s[distance=..3] run return run function exigence:misc/entity/get_distance/precision_0.1_within_10/get_3
execute if entity @s[distance=..4] run return run function exigence:misc/entity/get_distance/precision_0.1_within_10/get_4
execute if entity @s[distance=..5] run return run function exigence:misc/entity/get_distance/precision_0.1_within_10/get_5
execute if entity @s[distance=..6] run return run function exigence:misc/entity/get_distance/precision_0.1_within_10/get_6
execute if entity @s[distance=..7] run return run function exigence:misc/entity/get_distance/precision_0.1_within_10/get_7
execute if entity @s[distance=..8] run return run function exigence:misc/entity/get_distance/precision_0.1_within_10/get_8
execute if entity @s[distance=..9] run return run function exigence:misc/entity/get_distance/precision_0.1_within_10/get_9
execute if entity @s[distance=..10] run return run function exigence:misc/entity/get_distance/precision_0.1_within_10/get_10