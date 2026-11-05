# Get distance to 0.1 accuracy (rounded down) within 1 blocks

## CONSTRAINTS
#   AS entity
#   AT distance to calculate to

#====================================================================================================

execute if entity @s[distance=..0.1] run return run scoreboard players set #distance Temp 0
execute if entity @s[distance=0.1..0.2] run return run scoreboard players set #distance Temp 1
execute if entity @s[distance=0.2..0.3] run return run scoreboard players set #distance Temp 2
execute if entity @s[distance=0.3..0.4] run return run scoreboard players set #distance Temp 3
execute if entity @s[distance=0.4..0.5] run return run scoreboard players set #distance Temp 4
execute if entity @s[distance=0.5..0.6] run return run scoreboard players set #distance Temp 5
execute if entity @s[distance=0.6..0.7] run return run scoreboard players set #distance Temp 6
execute if entity @s[distance=0.7..0.8] run return run scoreboard players set #distance Temp 7
execute if entity @s[distance=0.8..0.9] run return run scoreboard players set #distance Temp 8
execute if entity @s[distance=0.9..1.0] run return run scoreboard players set #distance Temp 9