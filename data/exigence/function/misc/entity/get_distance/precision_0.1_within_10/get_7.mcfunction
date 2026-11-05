# Get distance to 0.1 accuracy (rounded down) within 6..7 blocks

## CONSTRAINTS
#   AS entity
#   AT distance to calculate to

#====================================================================================================

execute if entity @s[distance=6.0..6.1] run return run scoreboard players set #distance Temp 60
execute if entity @s[distance=6.1..6.2] run return run scoreboard players set #distance Temp 61
execute if entity @s[distance=6.2..6.3] run return run scoreboard players set #distance Temp 62
execute if entity @s[distance=6.3..6.4] run return run scoreboard players set #distance Temp 63
execute if entity @s[distance=6.4..6.5] run return run scoreboard players set #distance Temp 64
execute if entity @s[distance=6.5..6.6] run return run scoreboard players set #distance Temp 65
execute if entity @s[distance=6.6..6.7] run return run scoreboard players set #distance Temp 66
execute if entity @s[distance=6.7..6.8] run return run scoreboard players set #distance Temp 67
execute if entity @s[distance=6.8..6.9] run return run scoreboard players set #distance Temp 68
execute if entity @s[distance=6.9..7.0] run return run scoreboard players set #distance Temp 69