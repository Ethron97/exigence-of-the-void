# Handles hot springs hazard
#   Spawns blazes and removes blocks

#/tp @s -412.5 117.0 -140.5

#==================================================================================================================

# TOAST - Hot Springs Nether Tower, West
fill -453 104 -144 -453 105 -144 air
summon minecraft:blaze -451.5 104 -143.5 {Tags:["L2","DataMerge","HotSprings"],CustomName:{text:"Toast",color:"gold",italic:false},PersistenceRequired:1b}

# CHAR - Hot Springs Nether Tower, East
fill -388 97 -139 -388 98 -139 air
summon minecraft:blaze -388.5 97.00 -138.5 {Tags:["L2","DataMerge","HotSprings"],CustomName:{text:"Char",color:"gold",italic:false},PersistenceRequired:1b}

# Setup blazes
execute as @e[type=blaze,tag=!Setuped] run function exigence:enemy/blaze/setup_blazes
