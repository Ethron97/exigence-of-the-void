# Tp the interaction of player number 1 to player number 1

## CONSTRAINTS
#   AT player (eyes)

#====================================================================================================

# Gradually expand the search
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=1},distance=..8] run return run tp @s ~ ~ ~
execute as @e[x=519,y=0,z=486,dx=0,dy=0,dz=3,type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=1}] run return run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=1},distance=..16] run return run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=1},distance=..64] run return run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=1},distance=..1000] run return run tp @s ~ ~ ~

say Uhhh didn't find interaction for player 1? (utililty/interaction/private/tp_here_1)