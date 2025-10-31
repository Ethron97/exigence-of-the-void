# The first tower in the fire terrace on level 4
#   Spawns blaze at a random position on the tower

#/tp -449.52 232.00 -214.56

#==================================================================================================================

# Set fire
fill -451 232 -216 -449 232 -214 fire

# Randomize position
execute store result score #random Random run random value 1..2
execute if score #random Random matches 1 run summon minecraft:blaze -447.5 232.0 -214.5 {Tags:["L4","DataMerge","FireTowerB"],CustomName:{text:"Nova",color:"gold",italic:false},PersistenceRequired:1b}
execute if score #random Random matches 2 run summon minecraft:blaze -449.5 232.0 -212.5 {Tags:["L4","DataMerge","FireTowerB"],CustomName:{text:"Nova",color:"gold",italic:false},PersistenceRequired:1b}

# Setup blazes
execute as @e[type=blaze,tag=!Setuped] run function exigence:enemy/blaze/setup_blazes