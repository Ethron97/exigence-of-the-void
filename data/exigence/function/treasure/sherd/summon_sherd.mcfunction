# Called by :treasure/node/drop_treasure

## CONSTRAINTS
#   AS treasure node
#   AT location

#====================================================================================================

# DEBUG
#say Summon sherd

# Summon a new item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:burn_pottery_sherd",count:1,components:{"minecraft:max_stack_size":1}},Tags:["NewSherd","Sherd","Treasure"]}

# Copy object level
scoreboard players operation #compare node.property.object_level = @s node.property.object_level

# Data
execute as @e[type=minecraft:item,tag=NewSherd,distance=..1] run function exigence:treasure/sherd/sherd_data
