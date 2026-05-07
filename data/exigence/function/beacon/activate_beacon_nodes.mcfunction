# Called by game load sequence

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Activate beacon nodes

# Reset all nodes
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BeaconNode] at @s run function exigence:beacon/node/setup/deactivate

# Activate all
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={node.property.object_level=1..3},tag=BeaconNode] at @s run function exigence:beacon/node/setup/activate
# Pick a random 1 to activate on level 4
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,scores={node.property.object_level=4},tag=BeaconNode,sort=random,limit=1] at @s run function exigence:beacon/node/setup/activate
