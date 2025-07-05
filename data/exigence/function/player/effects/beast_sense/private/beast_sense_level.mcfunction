# Called by beast sense tick every second

execute if score @s ActiveLevel matches 1 at @s run function exigence:player/effects/beast_sense/private/lvl_1
execute if score @s ActiveLevel matches 2 at @s run function exigence:player/effects/beast_sense/private/lvl_2
execute if score @s ActiveLevel matches 3 at @s run function exigence:player/effects/beast_sense/private/lvl_3
execute if score @s ActiveLevel matches 4 at @s run function exigence:player/effects/beast_sense/private/lvl_4
