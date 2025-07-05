# Aggro ravagers every X ticks (defined by RavagerAggroCooldownLimit)
execute if score RavagerAggroCooldownCurrent TickCounter matches 1.. run scoreboard players remove RavagerAggroCooldownCurrent TickCounter 1
execute if score RavagerAggroCooldownCurrent TickCounter matches 1 at @a[tag=ActivePlayer,scores={dead=0}] at @e[type=minecraft:armor_stand,tag=MenaceNode,limit=1,sort=nearest] run function exigence:menace/eyeball/flyball

execute if score RavagerAggroCooldownCurrent TickCounter matches 0 run function exigence:menace/private/aggro_enemies



# The nearest eyeball chases the player (DEPRECATED)
#execute if score RavagerAggroCooldownCurrent TickCounter matches 1 at @a[tag=ActivePlayer,scores={dead=0}] as @e[type=minecraft:armor_stand,tag=Eyeball,tag=Staring,limit=1,sort=nearest] run function exigence:menace/eyeball/flyball
#execute if score RavagerAggroCooldownCurrent TickCounter matches 0 as @e[type=minecraft:vex,tag=EyeballMount] run function exigence:enemy/aggro_enemy

# Break invisibility on any players with it
execute as @a[tag=ActivePlayer,team=Enemy] run function exigence:player/effects/break_invisibility
