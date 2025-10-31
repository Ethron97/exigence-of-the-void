# DEBUG
#$say Verify drop position $(final_x) $(final_y) $(final_z)

#$say Checking block at $(final_x) $(final_y) $(final_z)
$execute if block $(final_x) $(final_y) $(final_z) #exigence:pass_through run data modify storage exigence:treasure_drop verify set value 1

execute if data storage exigence:treasure_drop {verify:0} run return 1

# If verify is 1, tp marker here an walk down
$execute positioned $(final_x) $(final_y) $(final_z) align xyz run tp @e[type=marker,tag=TreasureWalking] ~0.5 ~0.5 ~0.5
scoreboard players set @e[type=minecraft:marker,tag=TreasureWalking] node.treasure.treasure_walk_depth 0
execute as @e[type=marker,tag=TreasureWalking] at @s run function exigence:treasure/node/treasure_walk/walk_down
