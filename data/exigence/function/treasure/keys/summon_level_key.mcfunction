# I can't think of any exceptions to this:
# When a node drops a key, it is always for the next level up.
# So level 1 nodes always drop level 2 keys, level 2 nodes always drop level 3 keys etc.

## CONSTRAINTS
#   AS Item (NewLevelKey)

#==========================================================================================================

#say summoning level key

# Add to Treasure scoreboard team (for glow color)
team join Treasure @s
tag @s add Treasure

# Copy object level
scoreboard players operation @s ObjectLevel = #compare ObjectLevel

# Ensure item wont despawn
data modify entity @s Age set value -32768

# Remove "NewLevelKey" tag
tag @s remove NewLevelKey

# If treasure debug on, glow coin
execute if data storage exigence:debug {treasure:1} run data modify entity @s Glowing set value true
