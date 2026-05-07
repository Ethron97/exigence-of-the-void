## CONSTRAINTS
#   AS/AT treasure node

#====================================================================================================

# DEBUG
execute if score toggle.treasure debug matches 1 if score debug.level debug matches 3.. run say (D3) Drop treasure box

# summon minecraft:marker to store movement
execute at @s align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags:[TreasureWalking],CustomName:{text:"Marker | TreasureWalking"}}
 
# Randomize drop location
scoreboard players set Iteration.Current node.treasure.drop_working 0
data modify storage exigence:treasure_drop verify set value 0
function exigence:treasure/node/randomize_drop_pos with entity @s data.custom_data

# Drop treasure
$execute if data storage exigence:treasure_drop {verify:1} at @e[type=minecraft:marker,tag=TreasureWalking,distance=..64,limit=1] run function $(function) with storage exigence:treasure_drop
execute if data storage exigence:treasure_drop {verify:0} if score toggle.treasure debug matches 1 if score debug.level debug matches 2.. run say (D2) Failed to drop treasure

# Update node.data.treasure.highest_drop_tries
scoreboard players operation @s node.data.treasure.highest_drop_tries > Iteration.Current node.treasure.drop_working
#scoreboard players operation @s node.treasure.treasure_walk_depth > @e[type=minecraft:marker,tag=TreasureWalking,limit=1] node.treasure.treasure_walk_depth

# Remove marker
kill @e[type=minecraft:marker,tag=TreasureWalking,distance=..64,limit=1]
