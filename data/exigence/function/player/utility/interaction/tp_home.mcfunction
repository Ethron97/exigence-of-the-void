# Teleport this player's interaction to "home" so it is out of the way

## CONSTRAINTS
#   AS Player

#====================================================================================================

# Store player id for comparison
scoreboard players operation #compare game.player.player_number = @s game.player.player_number

# Get correponding interaction
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:interaction,tag=PlayerInteraction] if score @s game.entity.player_number = #compare game.player.player_number run function exigence:player/utility/interaction/private/tp_home
