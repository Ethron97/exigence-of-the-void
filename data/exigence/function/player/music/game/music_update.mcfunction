# Update music

## CONSTRAINTS
#   AS player

#====================================================================================================

# Called from game player tick
scoreboard players remove @s game.player.track_length 1

# Randomize new track
execute if score @s game.player.track_length matches ..0 run function exigence:player/music/game/next_track
