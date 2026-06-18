# Add icon if key was dropped

## CONSTRAINTS
#   AS/AT key waypiont

#====================================================================================================

# If player somehow dropped level 3 key on level 1...
execute if entity @s[tag=Level1Key] run return run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/level_1_key",atlas:"items",color:"white"}]
execute if entity @s[tag=Level2Key] run return run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/level_2_key",atlas:"items",color:"white"}]
execute if entity @s[tag=Level3Key] run return run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/level_3_key",atlas:"items",color:"white"}]