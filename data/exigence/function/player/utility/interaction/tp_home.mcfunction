# Teleport this player's interaction to "home" so it is out of the way

## CONSTRAINTS
#   AS Player

#====================================================================================================

# Get correponding interaction
## SWITCH
execute if score @s game.player.player_number matches 1 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=1},limit=1] run return run function exigence:player/utility/interaction/private/tp_home
execute if score @s game.player.player_number matches 2 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=2},limit=1] run return run function exigence:player/utility/interaction/private/tp_home
execute if score @s game.player.player_number matches 3 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=3},limit=1] run return run function exigence:player/utility/interaction/private/tp_home
execute if score @s game.player.player_number matches 4 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:interaction,tag=PlayerInteraction,scores={game.entity.player_number=4},limit=1] run return run function exigence:player/utility/interaction/private/tp_home
