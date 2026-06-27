# Called from game_tick when menace is maxed

#====================================================================================================

# Aggro ravagers every X ticks (defined by RavagerAggroCooldownLimit)
execute if score ravager.aggro.cooldown tick_counter matches 1.. run scoreboard players remove ravager.aggro.cooldown tick_counter 1
#execute if score ravager.aggro.cooldown tick_counter matches 1 at @a[tag=ActivePlayer,scores={dead=0}] at @e[type=minecraft:marker,tag=MenaceNode,limit=1,sort=nearest] run function exigence:menace/eyeball/flyball

execute if score ravager.aggro.cooldown tick_counter matches 1 at @a[scores={dead=0},tag=ActivePlayer,tag=!Escaped] positioned ~ ~10 ~ run function exigence:menace/eyeball/flyball
execute if score ravager.aggro.cooldown tick_counter matches 0 run function exigence:menace/private/aggro_enemies

# The nearest eyeball chases the player (DEPRECATED)
#execute if score ravager.aggro.cooldown tick_counter matches 1 at @a[tag=ActivePlayer,scores={dead=0}] as @e[type=minecraft:armor_stand,tag=Eyeball,tag=Staring,limit=1,sort=nearest] run function exigence:menace/eyeball/flyball
#execute if score ravager.aggro.cooldown tick_counter matches 0 as @e[type=minecraft:vex,tag=EyeballMount] run function exigence:enemy/aggro_enemy
