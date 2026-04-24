execute store result storage exigence:treasure_drop final_x int 1 run scoreboard players get @s TreasureBBX1
execute if score @s node.property.object_level matches 1 run data modify storage exigence:treasure_drop final_y set value "-7"
execute if score @s node.property.object_level matches 2 run data modify storage exigence:treasure_drop final_y set value "~-10"
execute if score @s node.property.object_level matches 3 run data modify storage exigence:treasure_drop final_y set value "134"
execute if score @s node.property.object_level matches 4 run data modify storage exigence:treasure_drop final_y set value "197"
execute store result storage exigence:treasure_drop final_z int 1 run scoreboard players get @s TreasureBBZ1

function exigence:treasure/node/debug/remove_bb_private with storage exigence:treasure_drop