# Called by exalting when any player returns to hub

# escape all players
execute as @a[tag=Exalting] run function exigence:player/game/escape

scoreboard players set @a[tag=Exalting] CarrotOnStick 0

clear @a[tag=Exalting] carrot_on_a_stick

tag @a[tag=Exalting] remove Exalting

# Game win
function exigence:game/game_win
