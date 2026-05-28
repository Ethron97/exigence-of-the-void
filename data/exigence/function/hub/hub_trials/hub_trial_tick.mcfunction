# Tick on hub trial nodes

## CONSTRAINTS
#   AS trial node

#====================================================================================================

# Call tick function
execute as @e[x=-20,y=169,z=-20,dx=50,dy=2,dz=50,type=minecraft:marker,tag=TrialNode,tag=ETICK] at @s run function exigence:door/vault/_trial/node/e_tick
