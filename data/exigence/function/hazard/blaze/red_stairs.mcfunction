# Handles red stairs hazard
#   Spawns blazes and removes blocks

#/tp @s -382.5 108.0 -111.5

#==================================================================================================================

# SMOLDER
fill -377 95 -116 -377 97 -114 air
summon minecraft:blaze -375.5 96.0 -114.5 {Tags:["L2","DataMerge","RedStairs"],CustomName:{text:"Smolder",color:"gold",italic:false},PersistenceRequired:1b}

# SCORCH
fill -395 86 -115 -395 88 -117 air
summon minecraft:blaze -395.5 87.0 -115.5 {Tags:["L2","DataMerge","RedStairs"],CustomName:{text:"Scorch",color:"gold",italic:false},PersistenceRequired:1b}

# SINGE
fill -377 80 -117 -377 82 -115 air
summon minecraft:blaze -375.5 81.0 -115.5 {Tags:["L2","DataMerge","RedStairs"],CustomName:{text:"Singe",color:"gold",italic:false},PersistenceRequired:1b}

# Setup blazes
execute as @e[type=blaze,tag=!Setuped] run function exigence:enemy/blaze/setup_blazes
