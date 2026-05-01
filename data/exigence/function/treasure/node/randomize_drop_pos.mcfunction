## CONSTRAINTS
#   AS treasure node

## INPUT
#   INTS bounding box (BBX1 etc)

#====================================================================================================

# DEBUG
#$say (D3) Randomize drop position $(BBX1)..$(BBX2) $(BBY1)..$(BBY2) $(BBZ1)..$(BBZ2)

scoreboard players add Iteration.Current node.treasure.drop_working 1

$execute store result score final.x node.treasure.drop_working run random value $(BBX1)..$(BBX2)
$execute store result score final.y node.treasure.drop_working run random value $(BBY1)..$(BBY2)
$execute store result score final.z node.treasure.drop_working run random value $(BBZ1)..$(BBZ2)

# Ensure no scores are 0 (happens if the random range fails)
execute if score final.x node.treasure.drop_working matches 0 run scoreboard players operation final.x node.treasure.drop_working = @s node.property.treasure.BBX1
execute if score final.y node.treasure.drop_working matches 0 run scoreboard players operation final.y node.treasure.drop_working = @s node.property.treasure.BBY1
execute if score final.z node.treasure.drop_working matches 0 run scoreboard players operation final.z node.treasure.drop_working = @s node.property.treasure.BBZ1

# Then copy the validated scores into the data
execute store result storage exigence:treasure_drop final_x int 1 run scoreboard players get final.x node.treasure.drop_working
execute store result storage exigence:treasure_drop final_y int 1 run scoreboard players get final.y node.treasure.drop_working
execute store result storage exigence:treasure_drop final_z int 1 run scoreboard players get final.z node.treasure.drop_working

# Verify drop pos
data modify storage exigence:treasure_drop verify set value 0
#   OUTPUTS: exigence:treasure_drop verify
execute as @e[type=minecraft:marker,tag=TreasureWalking,distance=..64,limit=1] at @s run function exigence:treasure/node/verify_drop_pos with storage exigence:treasure_drop

#execute if data storage exigence:treasure_drop {verify:1} run say verified drop loc
# If not air, iterate
#execute if data storage exigence:treasure_drop {verify:0} run say trying again
#   If priority=1, ignore max try restriction
execute if data storage exigence:treasure_drop {priority:1,verify:0} run function exigence:treasure/node/randomize_drop_pos with entity @s data.custom_data
execute if data storage exigence:treasure_drop {priority:0,verify:0} if score Iteration.Current node.treasure.drop_working < #MaxTreasureDroppingIterations node.treasure.drop_working run function exigence:treasure/node/randomize_drop_pos with entity @s data.custom_data
