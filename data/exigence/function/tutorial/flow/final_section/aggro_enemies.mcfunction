# Called by tutorial/max_menace_tick, on RavagerAggroCooldownCurrent=0

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

execute as @n[type=minecraft:ravager,name=Finaly,distance=..1000] at @s run damage @s 0 minecraft:arrow by @p[tag=Tutorial,distance=..1000]
execute as @n[type=minecraft:ravager,name=Vex,distance=..1000] at @s run damage @s 0 minecraft:arrow by @p[tag=Tutorial,distance=..1000]

# Reset cooldown
scoreboard players operation RavagerAggroCooldownCurrent Tutorial = #RavagerAggroCooldownLimit tick_counter
