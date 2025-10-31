# Call as closest player to this mirror

execute store result score Player.X game.mirror.math run data get entity @s Pos[0] 1
execute store result score Player.Y game.mirror.math run data get entity @s Pos[1] 1
execute store result score Player.Z game.mirror.math run data get entity @s Pos[2] 1

scoreboard players set #ApproachChanged game.mirror.math 0

# North
execute store success score #ApproachChanged game.mirror.math unless data storage exigence:mirror {3w:1} if score Player.Y game.mirror.math matches 44.. if score Player.Z game.mirror.math matches ..-223 at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run data modify storage exigence:mirror 3w set value 1

# South
execute store success score #ApproachChanged game.mirror.math unless data storage exigence:mirror {3w:2} if score Player.Y game.mirror.math matches 44.. if score Player.Z game.mirror.math matches -214.. at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run data modify storage exigence:mirror 3w set value 2

execute if score #ApproachChanged game.mirror.math matches 1 run function exigence:mirror/mirrors/three_wide_one_path/toggle_approach