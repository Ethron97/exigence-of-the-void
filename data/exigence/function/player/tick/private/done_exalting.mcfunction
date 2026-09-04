# Called by exalting when any player returns to hub

#====================================================================================================

# escape all players
execute as @a[tag=Exalting] run function exigence:game/access/escape

# Game win
execute in minecraft:overworld run function exigence:game/game_win
