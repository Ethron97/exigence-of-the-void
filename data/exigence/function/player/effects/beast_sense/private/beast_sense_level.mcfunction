# Called by beast sense tick every second

## CONSTRAINTS
#   AS/AT player

#====================================================================================================

execute if score @s game.player.active_level matches 1 run return run function exigence:player/effects/beast_sense/private/lvl_1
execute if score @s game.player.active_level matches 2 run return run function exigence:player/effects/beast_sense/private/lvl_2
execute if score @s game.player.active_level matches 3 run return run function exigence:player/effects/beast_sense/private/lvl_3
execute if score @s game.player.active_level matches 4 run return run function exigence:player/effects/beast_sense/private/lvl_4
