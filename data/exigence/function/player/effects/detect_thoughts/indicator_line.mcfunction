execute unless entity @e[distance=..2,type=minecraft:ravager,tag=Mindread] positioned ^ ^ ^ run particle minecraft:end_rod ~ ~ ~

execute unless entity @e[distance=..2,type=minecraft:ravager,tag=Mindread] positioned ^ ^ ^0.2 run function exigence:player/effects/detect_thoughts/indicator_line
execute positioned ^ ^ ^ run tag @e[distance=..2,type=minecraft:ravager,tag=Mindread] remove Mindread