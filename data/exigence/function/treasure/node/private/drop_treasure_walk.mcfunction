## CONSTRAINTS
#   AS treasure node walk

#=========================================================================================================

# Summon marker to store walk movement
execute at @s align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:[TreasureWalking]}

# Copy node id
scoreboard players operation @e[type=marker,tag=TreasureWalking] NodeID = @s NodeID

# Prep variables
scoreboard players operation WalkIterationMax TreasureDropWorking = @s TreasureRadius
scoreboard players set WalkIterationFailsMax TreasureDropWorking 3

# Randomize position
data modify storage exigence:treasure_drop verify set value 0
scoreboard players set IterationCurrent TreasureDropWorking 0
execute as @e[type=marker,tag=TreasureWalking] run function exigence:treasure/node/private/drop_treasure_walk_pos

# Store marker final positions for treasure drop
# OLD
#execute as @e[type=minecraft:marker,tag=TreasureWalking] store result storage exigence:treasure_drop final_x int 1 run data get entity @s Pos[0]
#execute as @e[type=minecraft:marker,tag=TreasureWalking] store result storage exigence:treasure_drop final_y int 1 run data get entity @s Pos[1]
#execute as @e[type=minecraft:marker,tag=TreasureWalking] store result storage exigence:treasure_drop final_z int 1 run data get entity @s Pos[2]

# Drop treasure
$execute if data storage exigence:treasure_drop {verify:1} at @e[type=minecraft:marker,tag=TreasureWalking] run function $(function) with storage exigence:treasure_drop
execute if data storage exigence:treasure_drop {verify:0} run say Failed to drop treasure.

# Update HighestTreasureIterations
scoreboard players operation @s HighestTreasureIterations > IterationCurrent TreasureDropWorking
scoreboard players operation @s TreasureWalkDepth > @e[type=minecraft:marker,tag=TreasureWalking,limit=1] TreasureWalkDepth

# Remove marker
kill @e[type=minecraft:marker,tag=TreasureWalking]
