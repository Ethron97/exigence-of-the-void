## CONSTRAINTS
#   AS treasure node

#=========================================================================================================

# DEBUG
#$say Randomize drop position $(working_x1)..$(working_x2) $(working_y1)..$(working_y2) $(working_z1)..$(working_z2)

scoreboard players add IterationCurrent TreasureDropWorking 1

$execute store result score final_x TreasureDropWorking run random value $(working_x1)..$(working_x2)
$execute store result score final_y TreasureDropWorking run random value $(working_y1)..$(working_y2)
$execute store result score final_z TreasureDropWorking run random value $(working_z1)..$(working_z2)

# Ensure no scores are 0 (happens if the random range fails)
execute if score final_x TreasureDropWorking matches 0 run scoreboard players operation final_x TreasureDropWorking = @s TreasureBBX1
execute if score final_y TreasureDropWorking matches 0 run scoreboard players operation final_y TreasureDropWorking = @s TreasureBBY1
execute if score final_z TreasureDropWorking matches 0 run scoreboard players operation final_z TreasureDropWorking = @s TreasureBBZ1

# Then copy the validated scores into the data
execute store result storage exigence:treasure_drop final_x int 1 run scoreboard players get final_x TreasureDropWorking
execute store result storage exigence:treasure_drop final_y int 1 run scoreboard players get final_y TreasureDropWorking
execute store result storage exigence:treasure_drop final_z int 1 run scoreboard players get final_z TreasureDropWorking

# Verify drop pos
data modify storage exigence:treasure_drop verify set value 0
function exigence:treasure/node/verify_drop_pos with storage exigence:treasure_drop

#execute if data storage exigence:treasure_drop {verify:1} run say verified drop loc

# If not air, iterate
#execute if data storage exigence:treasure_drop {verify:0} run say trying again
#execute if data storage exigence:treasure_drop {verify:0}
execute if data storage exigence:treasure_drop {verify:0} if score IterationCurrent TreasureDropWorking matches ..10 run function exigence:treasure/node/randomize_drop_pos with storage exigence:treasure_drop
