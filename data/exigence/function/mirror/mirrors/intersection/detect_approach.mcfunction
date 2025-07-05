# Call as closest player to this mirror

execute store result score PlayerX MirrorMath2 run data get entity @s Pos[0] 1
execute store result score PlayerY MirrorMath2 run data get entity @s Pos[1] 1
execute store result score PlayerZ MirrorMath2 run data get entity @s Pos[2] 1

scoreboard players set ApproachChanged MirrorMath2 0

# North
execute store success score ApproachChanged MirrorMath2 unless data storage exigence:mirror {int:1} if score PlayerY MirrorMath2 matches 60.. if score PlayerZ MirrorMath2 matches ..-218 at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run data modify storage exigence:mirror int set value 1

# South
execute store success score ApproachChanged MirrorMath2 unless data storage exigence:mirror {int:2} if score PlayerY MirrorMath2 matches 58.. if score PlayerZ MirrorMath2 matches -206.. if score PlayerX MirrorMath2 matches -435.. at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run data modify storage exigence:mirror int set value 2

# West
execute store success score ApproachChanged MirrorMath2 unless data storage exigence:mirror {int:3} if score PlayerY MirrorMath2 matches 60.. if score PlayerZ MirrorMath2 matches -214.. if score PlayerX MirrorMath2 matches ..-439 at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run data modify storage exigence:mirror int set value 3


execute if score ApproachChanged MirrorMath2 matches 1 run function exigence:mirror/mirrors/intersection/toggle_approach