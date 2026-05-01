# Only designed to be called by detect_active_level.mcfunction
# Used to move ravagers that get stuck near doorways

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

say (D3) Redistribute ravagers

# Clear tag that remembers which nodes have been ravagered
tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=MenaceNode,tag=Ravagered] remove Ravagered

# Select ravagers for redistribution
execute if score game.active_level game.state matches 1 run tag @e[type=minecraft:ravager,predicate=exigence:door/level1] add ReDistribute
execute if score game.active_level game.state matches 2 run tag @e[type=minecraft:ravager,predicate=exigence:door/level2] add ReDistribute
execute if score game.active_level game.state matches 3 run tag @e[type=minecraft:ravager,predicate=exigence:door/level3] add ReDistribute

# Add nearest 3 nodes to each non distribute ravager to the Ravagered so we don't clump
execute if score game.active_level game.state matches 1 run execute at @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:ravager,scores={game.entity.object_level=1},tag=!ReDistribute] \
run tag @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=MenaceNode,distance=..24,sort=nearest,limit=3] add Ravagered

execute if score game.active_level game.state matches 2 run execute at @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:ravager,scores={game.entity.object_level=2},tag=!ReDistribute] \
run tag @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=MenaceNode,distance=..24,sort=nearest,limit=3] add Ravagered

execute if score game.active_level game.state matches 3 run execute at @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:ravager,scores={game.entity.object_level=3},tag=!ReDistribute] \
run tag @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=MenaceNode,distance=..24,sort=nearest,limit=3] add Ravagered

# Call function redistribute_ravagers.mcfunction as all ravagers selected for distribution
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:ravager,tag=ReDistribute] run function exigence:enemy/ravager/distribute
