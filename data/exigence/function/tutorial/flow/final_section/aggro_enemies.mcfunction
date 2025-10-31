# Called by tutorial/max_menace_tick, on RavagerAggroCooldownCurrent=0

## CONSTRAINTS
#   IN exigence:tutorial

#=====================================================================================================

execute as @n[distance=..1000,type=minecraft:ravager,name=Finaly] at @s run damage @s 0 minecraft:arrow by @p[distance=..1000,tag=Tutorial]
execute as @n[distance=..1000,type=minecraft:ravager,name=Vex] at @s run damage @s 0 minecraft:arrow by @p[distance=..1000,tag=Tutorial]

# Reset cooldown
scoreboard players operation RavagerAggroCooldownCurrent Tutorial = #RavagerAggroCooldownLimit tick_counter
