# Teleport this player's interaction to "home" so it is out of the way

## CONSTRAINTS
#   AS Player
#   AT location

#====================================================================================================

# Call subfunction to make switches easier
execute if score @s game.player.player_number matches 1 run return run function exigence:player/utility/interaction/private/tp_here_1
execute if score @s game.player.player_number matches 2 run return run function exigence:player/utility/interaction/private/tp_here_2
execute if score @s game.player.player_number matches 3 run return run function exigence:player/utility/interaction/private/tp_here_3
execute if score @s game.player.player_number matches 4 run return run function exigence:player/utility/interaction/private/tp_here_4
