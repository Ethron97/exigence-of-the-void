# Tp the interaction of player number 4 to player number 4

## CONSTRAINTS
#   AT player (eyes)

#====================================================================================================

# Gradually expand the search
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=4},distance=..8] run return run tp @s ~ ~ ~
execute as @e[x=519,y=0,z=486,dx=0,dy=0,dz=3,type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=4}] run return run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=4},distance=..16] run return run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=4},distance=..64] run return run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=4},distance=..1000] run return run tp @s ~ ~ ~

say Uhhh didn't find interaction for player 4? (utililty/interaction/private/tp_here_4)