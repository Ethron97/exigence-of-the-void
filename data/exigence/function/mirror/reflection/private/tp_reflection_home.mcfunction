# Teleport reflection entity back to "home"

## CONSTRAINTS
#   AS reflection (armor stand)

#====================================================================================================

## SWITCH
execute if score @s game.entity.player_number matches 1 run return run tp @s 534.5 0.0 502.5 90 0
execute if score @s game.entity.player_number matches 2 run return run tp @s 534.5 0.0 503.5 90 0
execute if score @s game.entity.player_number matches 3 run return run tp @s 534.5 0.0 504.5 90 0
execute if score @s game.entity.player_number matches 4 run return run tp @s 534.5 0.0 505.5 90 0
