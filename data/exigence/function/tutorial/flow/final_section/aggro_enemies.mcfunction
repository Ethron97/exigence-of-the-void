# Called by tutorial/max_menace_tick, on RavagerAggroCooldownCurrent=0

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:ravager,name=Finaly] at @s run damage @s 0 minecraft:arrow by @p[tag=Tutorial,distance=..1000]
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:ravager,name=Vex] at @s run damage @s 0 minecraft:arrow by @p[tag=Tutorial,distance=..1000]

# Reset cooldown
scoreboard players operation tut.ravager_aggro_cooldown hub.tutorial = #RavagerAggroCooldownLimit tick_counter
