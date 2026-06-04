# Tp the interaction of player number 3 to player number 3

## CONSTRAINTS
#   AT player (eyes)

#====================================================================================================

# Gradually expand the search
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=3},distance=..8] run return run tp @s ~ ~ ~
execute as @e[x=519,y=0,z=486,dx=0,dy=0,dz=3,type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=3}] run return run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=3},distance=..16] run return run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=3},distance=..64] run return run tp @s ~ ~ ~
execute as @e[type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=3},distance=..1000] run return run tp @s ~ ~ ~

say Uhhh didn't find interaction for player 3? (utililty/interaction/private/tp_here_3)