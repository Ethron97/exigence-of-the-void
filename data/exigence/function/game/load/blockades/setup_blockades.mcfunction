# Called by game load sequences

#====================================================================================================

# Mark starting hazard
function exigence:hazard/starting_hazard/choose_starting_hazard

# Mark VARIANCE NODES as needing Reset, and Setup
#   Ignore cart caches, which got overwritten during deck process
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=VarianceNode,tag=!CartCache] run function exigence:variance/node/prepare_for_setup

# Mark HAZARD NODES as needing Reset, and Setup (if starting hazard)
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=HazardNode] run function exigence:hazard/node/prepare_for_setup

# Start setup loop
scoreboard players set #blockade_level Temp 1
schedule function exigence:game/load/blockades/setup_loop 1t
