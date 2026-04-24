# Determine level span to tick entities on

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

## SWITCH
execute if score game.difficulty game.state matches 1 run return run execute as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=!player] at @s run function exigence:game/game_tick/e_tick/e_tick_type
execute if score game.difficulty game.state matches 2 run return run execute as @e[x=-271,y=-55,z=-105,dx=-230,dy=180,dz=-331,type=!player] at @s run function exigence:game/game_tick/e_tick/e_tick_type
execute if score game.difficulty game.state matches 3 run return run execute as @e[x=-520,y=-64,z=-287,dx=345,dy=250,dz=345,type=!player] at @s run function exigence:game/game_tick/e_tick/e_tick_type
execute if score game.difficulty game.state matches 4.. run return run execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=!player] at @s run function exigence:game/game_tick/e_tick/e_tick_type
