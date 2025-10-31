execute if score #Redify Temp matches 0 as @e[type=minecraft:marker,tag=Redifier] at @s run fill ~-150 ~ ~-150 ~150 ~1 ~150 minecraft:sculk replace #exigence:sculk_alt
execute if score #Redify Temp matches 1 as @e[type=minecraft:marker,tag=Redifier] at @s run fill ~-150 ~ ~-150 ~150 ~1 ~150 minecraft:bedrock replace minecraft:sculk
execute if score #Redify Temp matches 2 as @e[type=minecraft:marker,tag=Redifier] at @s run fill ~-150 ~ ~-150 ~150 ~1 ~150 minecraft:dried_kelp_block replace #exigence:sculk

# Teleport up
execute as @e[type=minecraft:marker,tag=Redifier] at @s run tp @s ~ ~2 ~

# Increment current Y
scoreboard players add #block_reset Y 2

# iterate if not reached max
execute if score #block_reset Y < #block_reset_max Y run schedule function exigence:menace/private/transform_sculk_loop 1t

# Else kill marker
execute if score #block_reset Y >= #block_reset_max Y run kill @e[type=minecraft:marker,tag=Redifier]
