## Handle Replaces
# BARRELS
execute as @e[type=minecraft:marker,tag=BlockReset] at @s run fill ~-150 ~ ~-150 ~150 ~1 ~150 barrel[facing=down] replace barrel[facing=down]
execute as @e[type=minecraft:marker,tag=BlockReset] at @s run fill ~-150 ~ ~-150 ~150 ~1 ~150 barrel[facing=up] replace barrel[facing=up]
execute as @e[type=minecraft:marker,tag=BlockReset] at @s run fill ~-150 ~ ~-150 ~150 ~1 ~150 barrel[facing=north] replace barrel[facing=north]
execute as @e[type=minecraft:marker,tag=BlockReset] at @s run fill ~-150 ~ ~-150 ~150 ~1 ~150 barrel[facing=south] replace barrel[facing=south]
execute as @e[type=minecraft:marker,tag=BlockReset] at @s run fill ~-150 ~ ~-150 ~150 ~1 ~150 barrel[facing=east] replace barrel[facing=east]
execute as @e[type=minecraft:marker,tag=BlockReset] at @s run fill ~-150 ~ ~-150 ~150 ~1 ~150 barrel[facing=west] replace barrel[facing=west]

# BREWING STAND
execute as @e[type=minecraft:marker,tag=BlockReset] at @s run fill ~-150 ~ ~-150 ~150 ~1 ~150 brewing_stand replace brewing_stand




## Handle iteration
# Teleport up
execute as @e[type=minecraft:marker,tag=BlockReset] at @s run tp @s ~ ~2 ~

# Increment current Y
scoreboard players add #block_reset Y 2

# iterate if not reached max
execute if score #block_reset Y < #block_reset_max Y run schedule function exigence:misc/general/block_reset/block_reset_loop 1t

# Else kill marker
execute if score #block_reset Y >= #block_reset_max Y run kill @e[type=minecraft:marker,tag=BlockReset]
