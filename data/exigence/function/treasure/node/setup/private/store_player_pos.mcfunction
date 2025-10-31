execute store result score Player.X node.treasure.drop_working run data get entity @s Pos[0] 1
execute store result score Player.Y node.treasure.drop_working run data get entity @s Pos[1] 1
execute store result score Player.Z node.treasure.drop_working run data get entity @s Pos[2] 1

execute store result storage exigence:treasure_drop player_pos_x int 1 run scoreboard players get Player.X node.treasure.drop_working
execute store result storage exigence:treasure_drop player_pos_y int 1 run scoreboard players get Player.Y node.treasure.drop_working
execute store result storage exigence:treasure_drop player_pos_z int 1 run scoreboard players get Player.Z node.treasure.drop_working

$execute store result storage exigence:treasure_drop $(pos)_x int 1 run scoreboard players get Player.X node.treasure.drop_working
$execute store result storage exigence:treasure_drop $(pos)_y int 1 run scoreboard players get Player.Y node.treasure.drop_working
$execute store result storage exigence:treasure_drop $(pos)_z int 1 run scoreboard players get Player.Z node.treasure.drop_working