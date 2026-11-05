# Get distance to 0.1 accuracy (rounded down) within 8..9 blocks

## CONSTRAINTS
#   AS entity
#   AT distance to calculate to

#====================================================================================================

execute if entity @s[distance=8.0..8.1] run return run scoreboard players set #distance Temp 80
execute if entity @s[distance=8.1..8.2] run return run scoreboard players set #distance Temp 81
execute if entity @s[distance=8.2..8.3] run return run scoreboard players set #distance Temp 82
execute if entity @s[distance=8.3..8.4] run return run scoreboard players set #distance Temp 83
execute if entity @s[distance=8.4..8.5] run return run scoreboard players set #distance Temp 84
execute if entity @s[distance=8.5..8.6] run return run scoreboard players set #distance Temp 85
execute if entity @s[distance=8.6..8.7] run return run scoreboard players set #distance Temp 86
execute if entity @s[distance=8.7..8.8] run return run scoreboard players set #distance Temp 87
execute if entity @s[distance=8.8..8.9] run return run scoreboard players set #distance Temp 88
execute if entity @s[distance=8.9..9.0] run return run scoreboard players set #distance Temp 89