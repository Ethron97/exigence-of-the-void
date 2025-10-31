# The first tower in the fire terrace on level 4
#   Spawns blaze at a random position on the tower

#/tp -388.57 220.00 -142.55

#==================================================================================================================

# Set fire
fill -388 220 -142 -390 220 -144 fire

# Randomize position
execute store result score #random Random run random value 1..2
execute if score #random Random matches 1 run summon minecraft:blaze -390.5 220.0 -142.5 {Tags:["L4","DataMerge","FireTowerA"],CustomName:{text:"Comet",color:"gold",italic:false},PersistenceRequired:1b}
execute if score #random Random matches 2 run summon minecraft:blaze -388.5 220.0 -144.5 {Tags:["L4","DataMerge","FireTowerA"],CustomName:{text:"Comet",color:"gold",italic:false},PersistenceRequired:1b}

# Setup blazes
execute as @e[type=blaze,tag=!Setuped] run function exigence:enemy/blaze/setup_blazes