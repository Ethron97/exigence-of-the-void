# In charge of distributing the ravagers to various MenaceNodes around the map.

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Clear tag that remembers which nodes have been ravagered
tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,tag=Ravagered] remove Ravagered

# Select ravagers for distribution
execute as @e[x=-284,y=-64,z=-140,dx=7,dy=7,dz=7,type=minecraft:ravager,sort=arbitrary] run function exigence:enemy/ravager/distribute
