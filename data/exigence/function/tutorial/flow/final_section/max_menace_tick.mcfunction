# Called by final_section/tick

## CONSTRAINTS
#   IN exigence:tutorial

#=============================================================================================================

# Aggro ravagers every X ticks (defined by RavagerAggroCooldownLimit)
execute if score RavagerAggroCooldownCurrent Tutorial matches 1.. run scoreboard players remove RavagerAggroCooldownCurrent Tutorial 1
execute if score RavagerAggroCooldownCurrent Tutorial matches 1 at @a[distance=..1000,tag=Tutorial] positioned ~ ~5 ~ run function exigence:tutorial/flow/final_section/summon_eyeball

execute if score RavagerAggroCooldownCurrent Tutorial matches 0 run function exigence:tutorial/flow/final_section/aggro_enemies
