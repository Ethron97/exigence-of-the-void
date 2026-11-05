# Get distance to 0.1 accuracy (rounded down) within 7..8 blocks

## CONSTRAINTS
#   AS entity
#   AT distance to calculate to

#====================================================================================================

execute if entity @s[distance=7.0..7.1] run return run scoreboard players set #distance Temp 70
execute if entity @s[distance=7.1..7.2] run return run scoreboard players set #distance Temp 71
execute if entity @s[distance=7.2..7.3] run return run scoreboard players set #distance Temp 72
execute if entity @s[distance=7.3..7.4] run return run scoreboard players set #distance Temp 73
execute if entity @s[distance=7.4..7.5] run return run scoreboard players set #distance Temp 74
execute if entity @s[distance=7.5..7.6] run return run scoreboard players set #distance Temp 75
execute if entity @s[distance=7.6..7.7] run return run scoreboard players set #distance Temp 76
execute if entity @s[distance=7.7..7.8] run return run scoreboard players set #distance Temp 77
execute if entity @s[distance=7.8..7.9] run return run scoreboard players set #distance Temp 78
execute if entity @s[distance=7.9..8.0] run return run scoreboard players set #distance Temp 79