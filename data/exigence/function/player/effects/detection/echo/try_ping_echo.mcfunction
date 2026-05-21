# Only try and ping a echo if it makes sense to

## CONSTRAINTS
#   AS player

#====================================================================================================

# If there is an echo on the level the player is on
## SWITCH
execute if score @s game.player.active_level matches 1 run return run execute if score echos.level_1 game.dungeon.echo matches 1.. run function exigence:player/effects/detection/echo/ping_echo
execute if score @s game.player.active_level matches 2 run return run execute if score echos.level_2 game.dungeon.echo matches 1.. run function exigence:player/effects/detection/echo/ping_echo
execute if score @s game.player.active_level matches 3 run return run execute if score echos.level_3 game.dungeon.echo matches 1.. run function exigence:player/effects/detection/echo/ping_echo
execute if score @s game.player.active_level matches 4 run return run execute if score echos.level_4 game.dungeon.echo matches 1.. run function exigence:player/effects/detection/echo/ping_echo
