# Calcuate the distance of each Echo node from the start

tag @e[tag=Start] add DeltaCompare
tag @e[tag=EchoNode,scores={ObjectLevel=1}] add DistanceCalc

# Get deltas
execute as @e[tag=DistanceCalc] run function exigence:ember/setup/calc_distance
execute as @e[tag=DistanceCalc] run scoreboard players operation @s BaseEmberDrop = @s EchoNodeDistance
execute as @e[tag=DistanceCalc] run scoreboard players operation @s BaseEmberDrop /= 15 number
execute as @e[tag=DistanceCalc] run scoreboard players add @s BaseEmberDrop 1

tag @e[tag=DistanceCalc] remove DistanceCalc
tag @e[tag=DeltaCompare] remove DeltaCompare