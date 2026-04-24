# Tick detect thoughts

## CONSTRAINTS
#   AS/AT Ravager with detect thoughts 1..

#====================================================================================================

particle minecraft:electric_spark ~ ~0.5 ~ 1 1 1 0 1

# Decrease all ravager's lookee scores by 1, but slowly
#   (so if player accidently looks away slightly, it doesn't basically full reset by the time they look back)
## SWITCH
execute if score seconds.cooldown tick_counter matches 5 run return run scoreboard players remove @s game.ravager.detect_thoughts 1
execute if score seconds.cooldown tick_counter matches 15 run return run scoreboard players remove @s game.ravager.detect_thoughts 1
