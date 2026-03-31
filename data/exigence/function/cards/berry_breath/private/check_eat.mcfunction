# Check if this ravager should try and eat

## CONSTRAINTS
#   AS ravager

#====================================================================================================

# Tag ravagers on ANY active level
execute if score @s ObjectLevel matches 1 if entity @a[scores={dead=0,game.player.active_level=1},tag=ActivePlayer] run function exigence:cards/berry_breath/private/try_eat
execute if score @s ObjectLevel matches 2 if entity @a[scores={dead=0,game.player.active_level=2},tag=ActivePlayer] run function exigence:cards/berry_breath/private/try_eat
execute if score @s ObjectLevel matches 3 if entity @a[scores={dead=0,game.player.active_level=3},tag=ActivePlayer] run function exigence:cards/berry_breath/private/try_eat
execute if score @s ObjectLevel matches 4 if entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] run function exigence:cards/berry_breath/private/try_eat
