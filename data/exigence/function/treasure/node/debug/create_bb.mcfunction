# Preps all the storage variables for creating the Structure block
# Call as TreasureNode

scoreboard players operation posY TreasureDropWorking = @s TreasureBBY1
execute if entity @s[scores={ObjectLevel=1}] run scoreboard players operation posY TreasureDropWorking -= -7 number
execute if entity @s[scores={ObjectLevel=2}] run scoreboard players set posY TreasureDropWorking 10
execute if entity @s[scores={ObjectLevel=3}] run scoreboard players remove posY TreasureDropWorking 134
execute if entity @s[scores={ObjectLevel=4}] run scoreboard players remove posY TreasureDropWorking 197

scoreboard players operation sizeX TreasureDropWorking = @s TreasureBBX2
scoreboard players operation sizeX TreasureDropWorking -= @s TreasureBBX1
scoreboard players add sizeX TreasureDropWorking 1

scoreboard players operation sizeY TreasureDropWorking = @s TreasureBBY2
scoreboard players operation sizeY TreasureDropWorking -= @s TreasureBBY1
scoreboard players add sizeY TreasureDropWorking 1

scoreboard players operation sizeZ TreasureDropWorking = @s TreasureBBZ2
scoreboard players operation sizeZ TreasureDropWorking -= @s TreasureBBZ1
scoreboard players add sizeZ TreasureDropWorking 1

execute store result storage exigence:treasure_drop final_x int 1 run scoreboard players get @s TreasureBBX1
execute if entity @s[scores={ObjectLevel=1}] run data modify storage exigence:treasure_drop final_y set value "-7"
execute if entity @s[scores={ObjectLevel=2}] run data modify storage exigence:treasure_drop final_y set value "~-10"
execute if entity @s[scores={ObjectLevel=3}] run data modify storage exigence:treasure_drop final_y set value "134"
execute if entity @s[scores={ObjectLevel=4}] run data modify storage exigence:treasure_drop final_y set value "197"
execute store result storage exigence:treasure_drop final_z int 1 run scoreboard players get @s TreasureBBZ1
execute store result storage exigence:treasure_drop posY int 1 run scoreboard players get posY TreasureDropWorking
execute store result storage exigence:treasure_drop sizeX int 1 run scoreboard players get sizeX TreasureDropWorking
execute store result storage exigence:treasure_drop sizeY int 1 run scoreboard players get sizeY TreasureDropWorking
execute store result storage exigence:treasure_drop sizeZ int 1 run scoreboard players get sizeZ TreasureDropWorking

execute at @s run function exigence:treasure/node/debug/create_bb_private with storage exigence:treasure_drop