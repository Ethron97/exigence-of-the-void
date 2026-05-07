# Only try and ping a key if it makes sense to

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.door debug matches 1 if score debug.level debug matches 4.. run say (D4) Try ping key

# If key has not been found on the level the player is on
## SWITCH
execute if score @s game.player.active_level matches 1 run return run execute if score game.difficulty game.state matches 2.. unless score 1.got_key game.level_doors matches 1 run function exigence:player/effects/detection/key/ping_key
execute if score @s game.player.active_level matches 2 run return run execute if score game.difficulty game.state matches 3.. unless score 2.got_key game.level_doors matches 1 run function exigence:player/effects/detection/key/ping_key
execute if score @s game.player.active_level matches 3 run return run execute if score game.difficulty game.state matches 4.. unless score 3.got_key game.level_doors matches 1 run function exigence:player/effects/detection/key/ping_key
