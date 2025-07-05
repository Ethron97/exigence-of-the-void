# Called by activate_berry_nodes

## CONSTRAINTS
#   AS BerryNode

#=============================================================================================================

## CONTROL
# Reset berry nodes
execute at @s run function exigence:botany/node/berry_bush_inactive

# Place mud beneath because they are always on mud?
execute at @s run setblock ~ ~-1 ~ minecraft:mud

# Return if not on active level
execute if score @s ObjectLevel > Difficulty DungeonRun


## ACTIVATE
# 80% to be active, or 100% if marked
execute store result score @s Random run random value 1..5
execute as @s[tag=AlwaysGrow] run scoreboard players set @s Random 1
execute if score @s Random matches 1..4 run function exigence:botany/node/berry_bush_active



# Return if the bush is not active
execute unless entity @s[tag=Active] run return 0



## GROW
# Each bush has a 50% chance to start grown
execute store result score @s Random run random value 1..2

# Always grow marked bushes
#   Generally bushes that are locked behind 2 block jumps
scoreboard players set @s[tag=AlwaysGrow] Random 1

# Mark as from setup so when it is picked, we know what grew it
execute if score @s Random matches 1 run tag @s add FromSetup
# Grow selected bushes
execute if score @s Random matches 1 run function exigence:botany/node/berry_bush_grow
