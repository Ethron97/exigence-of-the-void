execute unless entity @e[type=minecraft:ravager,tag=Mindread,distance=..2] positioned ^ ^ ^ run particle minecraft:end_rod ~ ~ ~

execute unless entity @e[type=minecraft:ravager,tag=Mindread,distance=..2] positioned ^ ^ ^0.2 run function exigence:player/effects/detect_thoughts/indicator_line
execute positioned ^ ^ ^ run tag @e[type=minecraft:ravager,tag=Mindread,distance=..2] remove Mindread