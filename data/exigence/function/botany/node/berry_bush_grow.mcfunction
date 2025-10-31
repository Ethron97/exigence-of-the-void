# Grows berries on an active berry node. Determines how growth stage.

## CONSTRAINTS
#   AS BerryNode armorstand

#======================================================================================================

# Return if not berry node
execute unless entity @s[tag=BerryNode] run return fail

# Add Grown tag
tag @s add Grown

execute store result score @s Random run random value 1..2

# EXPECTED BERRIES:
# (0.5 * 2.5) + (0.5 * 1.5) = 2
# (0.6 * 3) + (0.4 * 1.5) = 2.4

# FULLY GROWN (50%)
execute if score @s Random matches 1 at @s run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=3]
execute if score @s Random matches 1 run scoreboard players set @s node.berry.max_berries 4
execute if score @s Random matches 1 run scoreboard players set @s node.berry.min_berries 2
execute if score @s Random matches 1 at @s run setblock ~ ~1 ~ minecraft:light[level=9]

# HALF GROWN (50%)
execute if score @s Random matches 2 at @s run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=2]
execute if score @s Random matches 2 run scoreboard players set @s node.berry.max_berries 2
execute if score @s Random matches 2 run scoreboard players set @s node.berry.min_berries 1
execute if score @s Random matches 2 at @s run setblock ~ ~1 ~ minecraft:light[level=6]

# Playsound
execute at @s run playsound minecraft:block.sweet_berry_bush.place neutral @a ~ ~ ~ 2 1

# Summon interaction
function exigence:botany/node/setup_interaction
