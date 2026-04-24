# In charge of distributing Creakings to various menace nodes around the map.
#   After placing each Creaking, the nearest 10 menace nodes are blacklisted so there is no (or very little) Creaking clump

# Clear tag that remembers which nodes have been Creakinged
tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,tag=Creakinged] remove Creakinged

execute as @e[x=-284,y=-64,z=-140,dx=7,dy=7,dz=7,type=minecraft:creaking] run function exigence:enemy/creaking/distribute_creaking
