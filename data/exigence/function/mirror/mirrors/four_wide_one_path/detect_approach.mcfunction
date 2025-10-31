# Call as closest player to this mirror

execute store result score Player.X game.mirror.math run data get entity @s Pos[0] 1
execute store result score Player.Y game.mirror.math run data get entity @s Pos[1] 1
execute store result score Player.Z game.mirror.math run data get entity @s Pos[2] 1

scoreboard players set #ApproachChanged game.mirror.math 0

# East
execute store success score #ApproachChanged game.mirror.math unless data storage exigence:mirror {4w:1} if score Player.Y game.mirror.math matches 79.. if score Player.X game.mirror.math matches -410.. at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run data modify storage exigence:mirror 4w set value 1

# West
execute store success score #ApproachChanged game.mirror.math unless data storage exigence:mirror {4w:2} if score Player.Y game.mirror.math matches 77.. if score Player.X game.mirror.math matches ..-422 at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run data modify storage exigence:mirror 4w set value 2

execute if score #ApproachChanged game.mirror.math matches 1 run function exigence:mirror/mirrors/four_wide_one_path/toggle_approach