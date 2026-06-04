# I can't think of any exceptions to this:
# When a node drops a key, it is always for the next level up.
# So level 1 nodes always drop level 2 keys, level 2 nodes always drop level 3 keys etc.

## CONSTRAINTS
#   AS Item (NewLevelKey)

## INPUT
#   SCORE #compare 

#====================================================================================================

execute unless score toggle.treasure debug matches 0 unless score toggle.door debug matches 0 if score debug.level debug matches 4.. run say (D4) Summoning level key

# Add to Treasure scoreboard team (for glow color)
team join Treasure @s
tag @s add Treasure
tag @s add ETICK

# Copy object level
scoreboard players operation @s game.entity.object_level = #compare node.property.object_level

# Ensure item wont despawn
data modify entity @s Age set value -32768

# Remove "NewLevelKey" tag
tag @s remove NewLevelKey

# If treasure debug on, glow coin
execute if score toggle.treasure debug matches 1 run data modify entity @s Glowing set value true

# Summon waypoint entity
execute at @s run function exigence:game/other/waypoint/summon_waypoint_from_item