# Get distance to 0.1 accuracy (rounded down) within 1..2 blocks

## CONSTRAINTS
#   AS entity
#   AT distance to calculate to

#====================================================================================================

execute if entity @s[distance=1.0..1.1] run return run scoreboard players set #distance Temp 10
execute if entity @s[distance=1.1..1.2] run return run scoreboard players set #distance Temp 11
execute if entity @s[distance=1.2..1.3] run return run scoreboard players set #distance Temp 12
execute if entity @s[distance=1.3..1.4] run return run scoreboard players set #distance Temp 13
execute if entity @s[distance=1.4..1.5] run return run scoreboard players set #distance Temp 14
execute if entity @s[distance=1.5..1.6] run return run scoreboard players set #distance Temp 15
execute if entity @s[distance=1.6..1.7] run return run scoreboard players set #distance Temp 16
execute if entity @s[distance=1.7..1.8] run return run scoreboard players set #distance Temp 17
execute if entity @s[distance=1.8..1.9] run return run scoreboard players set #distance Temp 18
execute if entity @s[distance=1.9..2.0] run return run scoreboard players set #distance Temp 19