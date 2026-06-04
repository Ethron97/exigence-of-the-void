# Glow enemies within 5 blocks of the player for the rest of the run

## CONSTRAINTS
#   AT player

#====================================================================================================

# Apply dragonbreath
execute as @n[type=#exigence:dragon_breath,team=Enemy,tag=!DragonBreath,distance=..5] at @s run function exigence:player/modifiers/private/apply_dragon_breath
