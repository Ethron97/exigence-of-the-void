execute store result score PlayerX TreasureDropWorking run data get entity @s Pos[0] 1
execute store result score PlayerY TreasureDropWorking run data get entity @s Pos[1] 1
execute store result score PlayerZ TreasureDropWorking run data get entity @s Pos[2] 1

execute store result storage exigence:treasure_drop player_pos_x int 1 run scoreboard players get PlayerX TreasureDropWorking
execute store result storage exigence:treasure_drop player_pos_y int 1 run scoreboard players get PlayerY TreasureDropWorking
execute store result storage exigence:treasure_drop player_pos_z int 1 run scoreboard players get PlayerZ TreasureDropWorking

$execute store result storage exigence:treasure_drop $(pos)_x int 1 run scoreboard players get PlayerX TreasureDropWorking
$execute store result storage exigence:treasure_drop $(pos)_y int 1 run scoreboard players get PlayerY TreasureDropWorking
$execute store result storage exigence:treasure_drop $(pos)_z int 1 run scoreboard players get PlayerZ TreasureDropWorking