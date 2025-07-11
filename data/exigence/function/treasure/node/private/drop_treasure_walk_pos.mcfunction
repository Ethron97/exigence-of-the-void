# Iterate until random pos is found
# Randomize drop location via random horizontal walk

## CONSTRAINTS
#   AS walking marker

# =========================================================================================================

scoreboard players add IterationCurrent TreasureDropWorking 1

# Teleport walking marker to its parent node
scoreboard players operation #compare NodeID = @s NodeID
execute as @e[type=minecraft:armor_stand,tag=TreasureNode] at @s if score @s NodeID = #compare NodeID align xyz run tp @e[type=minecraft:marker,tag=TreasureWalking] ~0.5 ~0.5 ~0.5

# Reset variables
scoreboard players set WalkIterationCurrent TreasureDropWorking 0
scoreboard players set WalkIterationFails TreasureDropWorking 0
# Blacklist one direction so the treasure will eventually get further away from the node
execute store result score WalkIterationBlacklist TreasureDropWorking run random value 1..4

# Verify storage = 1 successful drop location found. Assume try unless walk or walkdown fails
data modify storage exigence:treasure_drop verify set value 1
execute as @e[type=minecraft:marker,tag=TreasureWalking] run function exigence:treasure/node/treasure_walk/walk

# After horizontal walk, down walk until solid ground (so treasure doesn't spawn in the air)
scoreboard players set @e[type=minecraft:marker,tag=TreasureWalking] TreasureWalkDepth 0
execute as @e[type=minecraft:marker,tag=TreasureWalking] at @s run function exigence:treasure/node/treasure_walk/walk_down

# If not valid, iterate again
execute if data storage exigence:treasure_drop {verify:0} if score IterationCurrent TreasureDropWorking matches ..10 run function exigence:treasure/node/private/drop_treasure_walk_pos
