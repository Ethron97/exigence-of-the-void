# Commence random walk to find a drop point

## CONSTRAINTS
#   AS/AT treasure node (walk)

#====================================================================================================

# summon minecraft:marker to store walk movement
execute align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:[TreasureWalking],CustomName:{text:"Marker | TreasureWalking"}}

# Copy node id
#scoreboard players operation @e[type=minecraft:marker,tag=TreasureWalking] node.id = @s node.id

# Prep variables
scoreboard players operation Walk.Max node.treasure.drop_working = @s node.property.treasure.radius
scoreboard players set Walk.FailsMax node.treasure.drop_working 3

# Randomize position
data modify storage exigence:treasure_drop verify set value 0
scoreboard players set Iteration.Current node.treasure.drop_working 0
execute as @e[type=minecraft:marker,tag=TreasureWalking,distance=..1] at @s run function exigence:treasure/node/private/drop_treasure_walk_pos

# Drop treasure
$execute if data storage exigence:treasure_drop {verify:1} at @e[type=minecraft:marker,tag=TreasureWalking,distance=..64,limit=1] run function $(function) with storage exigence:treasure_drop
execute if data storage exigence:treasure_drop {verify:0} run say Failed to drop treasure.

# Update node.data.treasure.highest_drop_tries
scoreboard players operation @s node.data.treasure.highest_drop_tries > Iteration.Current node.treasure.drop_working
scoreboard players operation @s node.treasure.treasure_walk_depth > @e[type=minecraft:marker,tag=TreasureWalking,distance=..64,limit=1] node.treasure.treasure_walk_depth

# Remove marker
kill @e[type=minecraft:marker,tag=TreasureWalking,distance=..64]
