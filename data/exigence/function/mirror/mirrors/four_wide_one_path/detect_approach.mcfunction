# Call as closest player to this mirror

execute store result score PlayerX MirrorMath2 run data get entity @s Pos[0] 1
execute store result score PlayerY MirrorMath2 run data get entity @s Pos[1] 1
execute store result score PlayerZ MirrorMath2 run data get entity @s Pos[2] 1

scoreboard players set ApproachChanged MirrorMath2 0

# East
execute store success score ApproachChanged MirrorMath2 unless data storage exigence:mirror {4w:1} if score PlayerY MirrorMath2 matches 79.. if score PlayerX MirrorMath2 matches -410.. at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run data modify storage exigence:mirror 4w set value 1

# West
execute store success score ApproachChanged MirrorMath2 unless data storage exigence:mirror {4w:2} if score PlayerY MirrorMath2 matches 77.. if score PlayerX MirrorMath2 matches ..-422 at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run data modify storage exigence:mirror 4w set value 2

execute if score ApproachChanged MirrorMath2 matches 1 run function exigence:mirror/mirrors/four_wide_one_path/toggle_approach