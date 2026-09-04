# Used to update the dungeon every tick during campaign win exalting

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Call player tick functions, unless they left
execute as @a[tag=ActivePlayer,tag=Exalting] at @s run function exigence:player/tick/tick_exalting

# Random fireworks
function exigence:game/other/exalt/proc_random_firework
