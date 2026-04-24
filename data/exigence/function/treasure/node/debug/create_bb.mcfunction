# Preps all the storage variables for creating the Structure block

## CONSTRAINTS
#   AS treasure node

#====================================================================================================

scoreboard players operation pos.Y node.treasure.drop_working = @s TreasureBBY1
execute if score @s node.property.object_level matches 1 run scoreboard players operation pos.Y node.treasure.drop_working -= -7 number
execute if score @s node.property.object_level matches 2 run scoreboard players set pos.Y node.treasure.drop_working 10
execute if score @s node.property.object_level matches 3 run scoreboard players remove pos.Y node.treasure.drop_working 134
execute if score @s node.property.object_level matches 4 run scoreboard players remove pos.Y node.treasure.drop_working 197

scoreboard players operation size.X node.treasure.drop_working = @s TreasureBBX2
scoreboard players operation size.X node.treasure.drop_working -= @s TreasureBBX1
scoreboard players add size.X node.treasure.drop_working 1

scoreboard players operation size.Y node.treasure.drop_working = @s TreasureBBY2
scoreboard players operation size.Y node.treasure.drop_working -= @s TreasureBBY1
scoreboard players add size.Y node.treasure.drop_working 1

scoreboard players operation size.Z node.treasure.drop_working = @s TreasureBBZ2
scoreboard players operation size.Z node.treasure.drop_working -= @s TreasureBBZ1
scoreboard players add size.Z node.treasure.drop_working 1

execute store result storage exigence:treasure_drop final_x int 1 run scoreboard players get @s TreasureBBX1
execute if score @s node.property.object_level matches 1 run data modify storage exigence:treasure_drop final_y set value "-7"
execute if score @s node.property.object_level matches 2 run data modify storage exigence:treasure_drop final_y set value "~-10"
execute if score @s node.property.object_level matches 3 run data modify storage exigence:treasure_drop final_y set value "134"
execute if score @s node.property.object_level matches 4 run data modify storage exigence:treasure_drop final_y set value "197"
execute store result storage exigence:treasure_drop final_z int 1 run scoreboard players get @s TreasureBBZ1
execute store result storage exigence:treasure_drop posY int 1 run scoreboard players get pos.Y node.treasure.drop_working
execute store result storage exigence:treasure_drop sizeX int 1 run scoreboard players get size.X node.treasure.drop_working
execute store result storage exigence:treasure_drop sizeY int 1 run scoreboard players get size.Y node.treasure.drop_working
execute store result storage exigence:treasure_drop sizeZ int 1 run scoreboard players get size.Z node.treasure.drop_working

execute at @s run function exigence:treasure/node/debug/create_bb_private with storage exigence:treasure_drop