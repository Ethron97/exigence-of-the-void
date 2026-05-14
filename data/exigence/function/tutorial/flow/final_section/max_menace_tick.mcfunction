# Called by final_section/tick

## CONSTRAINTS
#   IN exigence:tutorial

#====================================================================================================

# Aggro ravagers every X ticks (defined by RavagerAggroCooldownLimit)
execute if score tut.ravager_aggro_cooldown hub.tutorial matches 1.. run scoreboard players remove tut.ravager_aggro_cooldown hub.tutorial 1
execute if score tut.ravager_aggro_cooldown hub.tutorial matches 1 at @a[x=12,y=97,z=-80,dx=230,dy=100,dz=250,tag=Tutorial,limit=1] positioned ~ ~5 ~ run function exigence:tutorial/flow/final_section/summon_eyeball

execute if score tut.ravager_aggro_cooldown hub.tutorial matches 0 run function exigence:tutorial/flow/final_section/aggro_enemies
