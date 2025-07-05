
scoreboard players add #z Temp 1

# Loop downwards
execute positioned ~ ~-1 ~ run function exigence:misc/biome_fill/level_1/loop_down

execute if score #z Temp matches ..30 positioned ~ ~ ~-1 run function exigence:misc/biome_fill/level_1/loop
