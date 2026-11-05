# Get distance to 0.1 accuracy (rounded down) within 3..4 blocks

## CONSTRAINTS
#   AS entity
#   AT distance to calculate to

#====================================================================================================

execute if entity @s[distance=3.0..3.1] run return run scoreboard players set #distance Temp 30
execute if entity @s[distance=3.1..3.2] run return run scoreboard players set #distance Temp 31
execute if entity @s[distance=3.2..3.3] run return run scoreboard players set #distance Temp 32
execute if entity @s[distance=3.3..3.4] run return run scoreboard players set #distance Temp 33
execute if entity @s[distance=3.4..3.5] run return run scoreboard players set #distance Temp 34
execute if entity @s[distance=3.5..3.6] run return run scoreboard players set #distance Temp 35
execute if entity @s[distance=3.6..3.7] run return run scoreboard players set #distance Temp 36
execute if entity @s[distance=3.7..3.8] run return run scoreboard players set #distance Temp 37
execute if entity @s[distance=3.8..3.9] run return run scoreboard players set #distance Temp 38
execute if entity @s[distance=3.9..4.0] run return run scoreboard players set #distance Temp 39