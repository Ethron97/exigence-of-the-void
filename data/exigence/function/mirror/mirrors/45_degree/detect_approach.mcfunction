# Call as closest player to this mirror

execute store result score PlayerX MirrorMath2 run data get entity @s Pos[0] 1
execute store result score PlayerY MirrorMath2 run data get entity @s Pos[1] 1
execute store result score PlayerZ MirrorMath2 run data get entity @s Pos[2] 1

scoreboard players set ApproachChanged MirrorMath2 0

# South East
execute store success score ApproachChanged MirrorMath2 unless data storage exigence:mirror {45:1} if score PlayerY MirrorMath2 matches 65.. if score PlayerX MirrorMath2 matches -423.. at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run data modify storage exigence:mirror 45 set value 1

# North West
execute store success score ApproachChanged MirrorMath2 unless data storage exigence:mirror {45:2} if score PlayerY MirrorMath2 matches 63.. if score PlayerX MirrorMath2 matches ..-429 at @s unless block ~ ~-1 ~ air unless block ~ ~-1 ~ barrier run data modify storage exigence:mirror 45 set value 2

execute if score ApproachChanged MirrorMath2 matches 1 run function exigence:mirror/mirrors/45_degree/toggle_approach
