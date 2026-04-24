# In charge of distributing Wardens to various menace nodes around the map.
#   After placing each warden, the nearest 10 menace nodes are blacklisted so there is no (or very little) warden clump

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

# Clear tag that remembers which nodes have been Wardened
tag @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,tag=Wardened] remove Wardened

# Distribute default 2 on level 3
execute if score game.difficulty game.state matches 3.. as @e[x=-284,y=-64,z=-140,dx=7,dy=7,dz=7,type=minecraft:warden,tag=L3] run function exigence:enemy/warden/distribute_warden/3

# Distribute third that can appear on level 1-3
execute store result score #random Random run random value 1..3
execute if score game.difficulty game.state matches 3.. if score #random Random matches 1 as @e[x=-284,y=-64,z=-140,dx=7,dy=7,dz=7,type=minecraft:warden,name=Spite] run function exigence:enemy/warden/distribute_warden/1
execute if score game.difficulty game.state matches 3.. if score #random Random matches 2 as @e[x=-284,y=-64,z=-140,dx=7,dy=7,dz=7,type=minecraft:warden,name=Spite] run function exigence:enemy/warden/distribute_warden/2
execute if score game.difficulty game.state matches 3.. if score #random Random matches 3 as @e[x=-284,y=-64,z=-140,dx=7,dy=7,dz=7,type=minecraft:warden,name=Spite] run function exigence:enemy/warden/distribute_warden/3

# If difficulty 4, distribute 4th that can appear on any level 1-3
execute store result score #random Random run random value 1..3
execute if score game.difficulty game.state matches 4.. if score #random Random matches 1 as @e[x=-284,y=-64,z=-140,dx=7,dy=7,dz=7,type=minecraft:warden,name=Rancor] run function exigence:enemy/warden/distribute_warden/1
execute if score game.difficulty game.state matches 4.. if score #random Random matches 2 as @e[x=-284,y=-64,z=-140,dx=7,dy=7,dz=7,type=minecraft:warden,name=Rancor] run function exigence:enemy/warden/distribute_warden/2
execute if score game.difficulty game.state matches 4.. if score #random Random matches 3 as @e[x=-284,y=-64,z=-140,dx=7,dy=7,dz=7,type=minecraft:warden,name=Rancor] run function exigence:enemy/warden/distribute_warden/3

# Distribute level 4 wardens
execute if score game.difficulty game.state matches 4.. as @e[x=-284,y=-64,z=-140,dx=7,dy=7,dz=7,type=minecraft:warden,tag=L4] run function exigence:enemy/warden/distribute_warden/4
