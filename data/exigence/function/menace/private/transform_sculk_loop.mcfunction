# Run fill command, then tp up and iterate

## CONSTRAINTS
#   AS/AT redifier

#====================================================================================================

execute if score #Redify Temp matches 0 run fill ~-150 ~ ~-150 ~150 ~1 ~150 minecraft:sculk replace #exigence:sculk_alt
execute if score #Redify Temp matches 1 run fill ~-150 ~ ~-150 ~150 ~1 ~150 minecraft:bedrock replace minecraft:sculk
execute if score #Redify Temp matches 2 run fill ~-150 ~ ~-150 ~150 ~1 ~150 minecraft:dried_kelp_block replace #exigence:sculk

# Teleport up
tp @s ~ ~2 ~

# Increment current Y
scoreboard players add #block_reset Temp 2

# iterate if not reached max
execute if score #block_reset Temp < #block_reset_max Temp run schedule function exigence:menace/private/transform_sculk_loop_s 1t

# Else kill marker
execute if score #block_reset Temp >= #block_reset_max Temp run kill @e[type=minecraft:marker,tag=Redifier]
