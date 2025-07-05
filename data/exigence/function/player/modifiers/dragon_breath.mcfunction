# Glow enemies within 5 blocks of the player for the rest of the run

## CONSTRAINTS
#   AT player

#=============================================================================================================

# Apply dragonbreath
execute as @e[distance=..5,team=Enemy,type=#exigence:glowable_enemies,tag=!DragonBreath] at @s run function exigence:player/modifiers/private/apply_dragon_breath
