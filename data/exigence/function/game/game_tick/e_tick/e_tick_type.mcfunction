# Entity tick
#   Begin forking to each specific type of entity

## CONSTRAINTS
#   AS/AT entity

#====================================================================================================

## SWITCH
#   Most common to least common
execute if entity @s[type=minecraft:marker] run return run function exigence:game/game_tick/e_tick/e_tick_marker
execute if entity @s[type=minecraft:item] run return run function exigence:game/game_tick/e_tick/e_tick_item
execute if entity @s[type=minecraft:ravager] run return run function exigence:game/game_tick/e_tick/e_tick_ravager
execute if entity @s[type=minecraft:warden] run return run function exigence:game/game_tick/e_tick/e_tick_warden
# Non-ravager/warden enemies:
execute if entity @s[type=#exigence:enemy_misc] run return run function exigence:game/game_tick/e_tick/e_tick_enemy_other
