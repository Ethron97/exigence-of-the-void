# Only try and ping a flame if it makes sense to

## CONSTRAINTS
#   AS player

#====================================================================================================

execute if score toggle.beacon debug matches 1 if score debug.level debug matches 4.. run say (D4) Try ping flame

# If beacon is not lit on the level the player is on
## SWITCH
execute if score @s game.player.active_level matches 1 run return run execute if score lit.1 game.story.beacons matches 0 run function exigence:player/effects/detection/flame/ping_flame
execute if score @s game.player.active_level matches 2 run return run execute if score lit.2 game.story.beacons matches 0 run function exigence:player/effects/detection/flame/ping_flame
execute if score @s game.player.active_level matches 3 run return run execute if score lit.3 game.story.beacons matches 0 run function exigence:player/effects/detection/flame/ping_flame
execute if score @s game.player.active_level matches 4 run return run execute if score lit.4 game.story.beacons matches ..2 run function exigence:player/effects/detection/flame/ping_flame
