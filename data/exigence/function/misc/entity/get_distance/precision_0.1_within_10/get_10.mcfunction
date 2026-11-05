# Get distance to 0.1 accuracy (rounded down) within 9..10 blocks

## CONSTRAINTS
#   AS entity
#   AT distance to calculate to

#====================================================================================================

execute if entity @s[distance=9.0..9.1] run return run scoreboard players set #distance Temp 90
execute if entity @s[distance=9.1..9.2] run return run scoreboard players set #distance Temp 91
execute if entity @s[distance=9.2..9.3] run return run scoreboard players set #distance Temp 92
execute if entity @s[distance=9.3..9.4] run return run scoreboard players set #distance Temp 93
execute if entity @s[distance=9.4..9.5] run return run scoreboard players set #distance Temp 94
execute if entity @s[distance=9.5..9.6] run return run scoreboard players set #distance Temp 95
execute if entity @s[distance=9.6..9.7] run return run scoreboard players set #distance Temp 96
execute if entity @s[distance=9.7..9.8] run return run scoreboard players set #distance Temp 97
execute if entity @s[distance=9.8..9.9] run return run scoreboard players set #distance Temp 98
execute if entity @s[distance=9.9..10.0] run return run scoreboard players set #distance Temp 99