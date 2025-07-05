# Called by game_tick

# 1. Detect if there is Ravager Glass TM beneath, inside, or above the active player. If there is, run
execute as @a[tag=ActivePlayer,scores={dead=0,mod_RavagerHoof=0}] run function exigence:player/ravager_glass/check
execute as @a[tag=Tutorial,gamemode=adventure] run function exigence:player/ravager_glass/check

execute as @e[type=minecraft:marker,tag=RavagerGlass] run function exigence:game/game_tick/ravager_glass/update
