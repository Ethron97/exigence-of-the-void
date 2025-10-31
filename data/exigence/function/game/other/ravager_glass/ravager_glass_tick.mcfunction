# Called by tick unless both game and tutorial are off

# 1. Detect if there is Ravager Glass TM beneath, inside, or above the active player. If there is, run
execute as @a[tag=ActivePlayer,scores={dead=0,game.player.mod.ravager_hoof=0}] at @s run function exigence:player/ravager_glass/check
execute in exigence:tutorial as @a[tag=Tutorial,gamemode=adventure] at @s run function exigence:player/ravager_glass/check

execute as @e[type=minecraft:marker,tag=RavagerGlass] run function exigence:game/other/ravager_glass/update
