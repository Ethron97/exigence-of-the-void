# Check if this ravager should try and eat

## CONSTRAINTS
#   AS ravager

#==========================================================================================================

# Tag ravagers on ANY active level
execute if score @s ObjectLevel matches 1 if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=1}] run function exigence:cards/berry_breath/private/try_eat
execute if score @s ObjectLevel matches 2 if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=2}] run function exigence:cards/berry_breath/private/try_eat
execute if score @s ObjectLevel matches 3 if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=3}] run function exigence:cards/berry_breath/private/try_eat
execute if score @s ObjectLevel matches 4 if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] run function exigence:cards/berry_breath/private/try_eat
