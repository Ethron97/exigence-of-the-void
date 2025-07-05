# Data for new sherd

## CONSTRAINTS
#   AS Item (NewSherd)

#==========================================================================================================

# Playsound
execute at @s run playsound minecraft:block.decorated_pot.place neutral @a ~ ~ ~ 2 1

# Add to Treasure scoreboard team (for glow color)
team join Treasure @s

# Copy object level
scoreboard players operation @s ObjectLevel = #compare ObjectLevel

# If treasure debug on, glow coin
execute if data storage exigence:treasure_drop {debug:1} run data modify entity @s Glowing set value true

# Remove "NewSherd" tag
tag @s remove NewSherd
