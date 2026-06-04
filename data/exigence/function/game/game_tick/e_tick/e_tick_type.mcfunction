# Entity tick
#   Begin forking to each specific type of entity

## CONSTRAINTS
#   AS/AT entity

#====================================================================================================

## SWITCH
#   Most common to least common
execute if entity @s[type=minecraft:marker] run return run function exigence:game/game_tick/e_tick/e_tick_marker
execute if entity @s[type=minecraft:item] run return run function exigence:game/game_tick/e_tick/e_tick_item
execute if entity @s[type=minecraft:interaction] run return run function exigence:game/game_tick/e_tick/e_tick_interaction
execute if entity @s[type=minecraft:armor_stand] run return run function exigence:game/game_tick/e_tick/e_tick_armorstand
execute if entity @s[type=#exigence:enemy] run return run function exigence:game/game_tick/e_tick/e_tick_enemy_type
execute if entity @s[type=minecraft:villager] run return run function exigence:npc/game/villager/e_tick
execute if entity @s[type=minecraft:mannequin] run return run function exigence:game/game_tick/e_tick/e_tick_mannequin
execute if entity @s[type=minecraft:enderman] run return run function exigence:npc/game/void_merchant/e_tick
execute if entity @s[type=minecraft:snowball] run return run function exigence:game/game_tick/e_tick/e_tick_snowball