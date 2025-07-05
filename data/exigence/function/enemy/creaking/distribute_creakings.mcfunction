# In charge of distributing Creakings to various menace nodes around the map.
#   After placing each Creaking, the nearest 10 menace nodes are blacklisted so there is no (or very little) Creaking clump

# Clear tag that remembers which nodes have been Creakinged
tag @e[type=minecraft:armor_stand,tag=MenaceNode,tag=Creakinged] remove Creakinged

execute as @e[type=minecraft:creaking] run function exigence:enemy/creaking/distribute_creaking
