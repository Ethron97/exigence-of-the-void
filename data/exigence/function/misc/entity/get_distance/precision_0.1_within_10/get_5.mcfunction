# Get distance to 0.1 accuracy (rounded down) within 4..5 blocks

## CONSTRAINTS
#   AS entity
#   AT distance to calculate to

#====================================================================================================

execute if entity @s[distance=4.0..4.1] run return run scoreboard players set #distance Temp 40
execute if entity @s[distance=4.1..4.2] run return run scoreboard players set #distance Temp 41
execute if entity @s[distance=4.2..4.3] run return run scoreboard players set #distance Temp 42
execute if entity @s[distance=4.3..4.4] run return run scoreboard players set #distance Temp 43
execute if entity @s[distance=4.4..4.5] run return run scoreboard players set #distance Temp 44
execute if entity @s[distance=4.5..4.6] run return run scoreboard players set #distance Temp 45
execute if entity @s[distance=4.6..4.7] run return run scoreboard players set #distance Temp 46
execute if entity @s[distance=4.7..4.8] run return run scoreboard players set #distance Temp 47
execute if entity @s[distance=4.8..4.9] run return run scoreboard players set #distance Temp 48
execute if entity @s[distance=4.9..5.0] run return run scoreboard players set #distance Temp 49