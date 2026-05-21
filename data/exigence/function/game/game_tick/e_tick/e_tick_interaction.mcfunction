# Tick on all interactions

## CONSTRAINTS
#   AS/AT interaction

#====================================================================================================

# glow particles bi-second
execute if score seconds.cooldown tick_counter matches 6 run function exigence:misc/interaction/e_tick
execute if score seconds.cooldown tick_counter matches 16 run function exigence:misc/interaction/e_tick

## SWITCH
execute if entity @s[tag=Crystal] run return run function exigence:game/other/wards/crystal/e_tick