# DEBUG
#say Drop treasure box

# Summon marker to store movement
execute at @s align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:[TreasureWalking]}

# Copy this node's BB scoreboards to working data
execute store result storage exigence:treasure_drop working_x1 int 1 run scoreboard players get @s TreasureBBX1
execute store result storage exigence:treasure_drop working_y1 int 1 run scoreboard players get @s TreasureBBY1
execute store result storage exigence:treasure_drop working_z1 int 1 run scoreboard players get @s TreasureBBZ1
execute store result storage exigence:treasure_drop working_x2 int 1 run scoreboard players get @s TreasureBBX2
execute store result storage exigence:treasure_drop working_y2 int 1 run scoreboard players get @s TreasureBBY2
execute store result storage exigence:treasure_drop working_z2 int 1 run scoreboard players get @s TreasureBBZ2

# Randomize drop location
scoreboard players set IterationCurrent TreasureDropWorking 0
data modify storage exigence:treasure_drop verify set value 0
function exigence:treasure/node/randomize_drop_pos with storage exigence:treasure_drop

# Drop treasure
$execute if data storage exigence:treasure_drop {verify:1} at @e[type=marker,tag=TreasureWalking] run function $(function) with storage exigence:treasure_drop
execute if data storage exigence:treasure_drop {verify:0} run say Failed to drop treasure.

# Update HighestTreasureIterations
scoreboard players operation @s HighestTreasureIterations > IterationCurrent TreasureDropWorking
scoreboard players operation @s TreasureWalkDepth > @e[type=minecraft:marker,tag=TreasureWalking,limit=1] TreasureWalkDepth

# Remove marker
kill @e[type=minecraft:marker,tag=TreasureWalking]
