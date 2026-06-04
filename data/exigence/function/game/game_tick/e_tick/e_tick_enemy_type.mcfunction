# Called from game tick e tick type enemy

## CONSTRAINTS
#   AS/AT enemy

#====================================================================================================

execute if entity @s[type=minecraft:ravager] run return run function exigence:game/game_tick/e_tick/e_tick_ravager
execute if entity @s[type=minecraft:warden] run return run function exigence:game/game_tick/e_tick/e_tick_warden
execute if entity @s[type=#exigence:enemy_misc] run return run function exigence:game/game_tick/e_tick/e_tick_enemy_other