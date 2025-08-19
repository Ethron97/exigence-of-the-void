# Handle data of new ravager glass marker

## CONSTRAINTS
#   AS Marker (NewRavagerGlass)

#=======================================================================================================

scoreboard players set @s RavagerGlassCooldown 20


# Playsound of glass breaking
execute at @s run playsound minecraft:block.glass.break ambient @a[scores={s_disableRavagerGlassBreak=0}] ~ ~ ~ 0.5 1

# Remove local tag
tag @s remove NewRavagerGlass
