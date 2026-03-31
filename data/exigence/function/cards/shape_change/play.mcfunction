say [6 Red: +10 Max Health. +30 seconds of Saturation]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 as @a[scores={dead=0},tag=ActivePlayer] run function exigence:player/attributes/health_boost/increase_health {boost:20}
execute if score #LastConsumeResult game.resources matches 1 run effect give @a[scores={dead=0},tag=ActivePlayer] saturation 600 0 false
