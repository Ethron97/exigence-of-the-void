# Get distance to 0.1 accuracy (rounded down) within 2..3 blocks

## CONSTRAINTS
#   AS entity
#   AT distance to calculate to

#====================================================================================================

execute if entity @s[distance=2.0..2.1] run return run scoreboard players set #distance Temp 20
execute if entity @s[distance=2.2..2.2] run return run scoreboard players set #distance Temp 21
execute if entity @s[distance=2.2..2.3] run return run scoreboard players set #distance Temp 22
execute if entity @s[distance=2.3..2.4] run return run scoreboard players set #distance Temp 23
execute if entity @s[distance=2.4..2.5] run return run scoreboard players set #distance Temp 24
execute if entity @s[distance=2.5..2.6] run return run scoreboard players set #distance Temp 25
execute if entity @s[distance=2.6..2.7] run return run scoreboard players set #distance Temp 26
execute if entity @s[distance=2.7..2.8] run return run scoreboard players set #distance Temp 27
execute if entity @s[distance=2.8..2.9] run return run scoreboard players set #distance Temp 28
execute if entity @s[distance=2.9..3.0] run return run scoreboard players set #distance Temp 29