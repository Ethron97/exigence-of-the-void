## CONSTRAINTS
#   AT location

#==========================================================================================================

# DEBUG
#say Summon sherd

# Summon a new item
summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:burn_pottery_sherd",count:1,components:{"minecraft:max_stack_size":1}},Tags:["NewSherd","Sherd","Treasure"]}

# Copy object level
scoreboard players operation #compare ObjectLevel = @s ObjectLevel

# Data
execute as @e[distance=..1,type=item,tag=NewSherd] run function exigence:treasure/sherd/sherd_data
