
# Particle for debug
#execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:flame ~ ~ ~

# fill biome
fillbiome ~ ~2 ~ ~ ~2 ~ basalt_deltas

# Repeat down one block
execute positioned ~ ~-1 ~ if block ~ ~-1 ~ minecraft:air run function exigence:misc/biome_fill/level_1/loop_down
