# Updates the effect given on the player hud to match the current heighten level
# Only needs to be called when heighten is used or gained

## CONSTRAINTS
#   AS player

#====================================================================================================

# Clear so we can apply a lower level if needed
effect clear @s haste

execute if score @s game.player.heighten matches 1 run return run effect give @s haste infinite 0
execute if score @s game.player.heighten matches 2 run return run effect give @s haste infinite 1
execute if score @s game.player.heighten matches 3 run return run effect give @s haste infinite 2
execute if score @s game.player.heighten matches 4 run return run effect give @s haste infinite 3
execute if score @s game.player.heighten matches 5 run return run effect give @s haste infinite 4
execute if score @s game.player.heighten matches 6 run return run effect give @s haste infinite 5
execute if score @s game.player.heighten matches 7 run return run effect give @s haste infinite 6
execute if score @s game.player.heighten matches 8 run return run effect give @s haste infinite 7
