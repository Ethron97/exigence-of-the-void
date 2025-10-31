say [6 Red: +10 Max Health. +30 seconds of Saturation]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 as @a[tag=ActivePlayer,scores={dead=0}] run function exigence:player/attributes/health_boost/increase_health {boost:20}
execute if score #LastConsumeResult game.resources matches 1 run effect give @a[tag=ActivePlayer,scores={dead=0}] saturation 600 0 false
