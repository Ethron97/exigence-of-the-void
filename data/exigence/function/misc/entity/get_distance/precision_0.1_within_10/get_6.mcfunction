# Get distance to 0.1 accuracy (rounded down) within 5..6 blocks

## CONSTRAINTS
#   AS entity
#   AT distance to calculate to

#====================================================================================================

execute if entity @s[distance=5.0..5.1] run return run scoreboard players set #distance Temp 50
execute if entity @s[distance=5.1..5.2] run return run scoreboard players set #distance Temp 51
execute if entity @s[distance=5.2..5.3] run return run scoreboard players set #distance Temp 52
execute if entity @s[distance=5.3..5.4] run return run scoreboard players set #distance Temp 53
execute if entity @s[distance=5.4..5.5] run return run scoreboard players set #distance Temp 54
execute if entity @s[distance=5.5..5.6] run return run scoreboard players set #distance Temp 55
execute if entity @s[distance=5.6..5.7] run return run scoreboard players set #distance Temp 56
execute if entity @s[distance=5.7..5.8] run return run scoreboard players set #distance Temp 57
execute if entity @s[distance=5.8..5.9] run return run scoreboard players set #distance Temp 58
execute if entity @s[distance=5.9..6.0] run return run scoreboard players set #distance Temp 59