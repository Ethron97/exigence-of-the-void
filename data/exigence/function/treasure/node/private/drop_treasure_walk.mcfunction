## CONSTRAINTS
#   AS treasure node walk

#=========================================================================================================

# Summon marker to store walk movement
execute at @s align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:[TreasureWalking]}

# Copy node id
scoreboard players operation @e[type=marker,tag=TreasureWalking] NodeID = @s NodeID

# Prep variables
scoreboard players operation Walk.Max node.treasure.drop_working = @s TreasureRadius
scoreboard players set Walk.FailsMax node.treasure.drop_working 3

# Randomize position
data modify storage exigence:treasure_drop verify set value 0
scoreboard players set Iteration.Current node.treasure.drop_working 0
execute as @e[type=marker,tag=TreasureWalking] run function exigence:treasure/node/private/drop_treasure_walk_pos

# Store marker final positions for treasure drop
# OLD
#execute as @e[type=minecraft:marker,tag=TreasureWalking] store result storage exigence:treasure_drop final_x int 1 run data get entity @s Pos[0]
#execute as @e[type=minecraft:marker,tag=TreasureWalking] store result storage exigence:treasure_drop final_y int 1 run data get entity @s Pos[1]
#execute as @e[type=minecraft:marker,tag=TreasureWalking] store result storage exigence:treasure_drop final_z int 1 run data get entity @s Pos[2]

# Drop treasure
$execute if data storage exigence:treasure_drop {verify:1} at @e[type=minecraft:marker,tag=TreasureWalking] run function $(function) with storage exigence:treasure_drop
execute if data storage exigence:treasure_drop {verify:0} run say Failed to drop treasure.

# Update node.treasure.data.highest_drop_tries
scoreboard players operation @s node.treasure.data.highest_drop_tries > Iteration.Current node.treasure.drop_working
scoreboard players operation @s node.treasure.treasure_walk_depth > @e[type=minecraft:marker,tag=TreasureWalking,limit=1] node.treasure.treasure_walk_depth

# Remove marker
kill @e[type=minecraft:marker,tag=TreasureWalking]
