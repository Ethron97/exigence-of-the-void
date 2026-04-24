# Loop over all variances 1 tick at a time

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

scoreboard players set #didnt_setup Temp 1
scoreboard players set #didnt_reset Temp 1
scoreboard players set #didnt_hazard Temp 1

# Trigger one function per tick
#   1. Reset all hazard on level
#   2. Setup all hazard on level
#   3. Reset all variance on level
#   4. Setup all variance on level
#   Do all resets on a level before going to setups on a level
#   Returns #didnt_setup to 0 if found
execute if score #blockade_level Temp matches 1 as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=HazardNode,tag=NeedReset,limit=1] at @s run function exigence:hazard/node/reset
execute if score #blockade_level Temp matches 1 if score #didnt_reset Temp matches 1 as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=HazardNode,tag=Setup,limit=1] at @s run function exigence:hazard/node/starting_hazard
execute if score #blockade_level Temp matches 1 if score #didnt_hazard Temp matches 1 as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=VarianceNode,tag=NeedReset,limit=1] at @s run function exigence:variance/node/reset
execute if score #blockade_level Temp matches 1 if score #didnt_reset Temp matches 1 if score #didnt_hazard Temp matches 1 as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,scores={node.property.object_level=1},tag=VarianceNode,tag=Setup,limit=1] at @s run function exigence:variance/node/setup

execute if score #blockade_level Temp matches 2 as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=HazardNode,tag=NeedReset,limit=1] at @s run function exigence:hazard/node/reset
execute if score #blockade_level Temp matches 2 if score #didnt_reset Temp matches 1 as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=HazardNode,tag=Setup,limit=1] at @s run function exigence:hazard/node/starting_hazard
execute if score #blockade_level Temp matches 2 if score #didnt_hazard Temp matches 1 as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=VarianceNode,tag=NeedReset,limit=1] at @s run function exigence:variance/node/reset
execute if score #blockade_level Temp matches 2 if score #didnt_reset Temp matches 1 if score #didnt_hazard Temp matches 1 as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,scores={node.property.object_level=2},tag=VarianceNode,tag=Setup,limit=1] at @s run function exigence:variance/node/setup

execute if score #blockade_level Temp matches 3 as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=HazardNode,tag=NeedReset,limit=1] at @s run function exigence:hazard/node/reset
execute if score #blockade_level Temp matches 3 if score #didnt_reset Temp matches 1 as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=HazardNode,tag=Setup,limit=1] at @s run function exigence:hazard/node/starting_hazard
execute if score #blockade_level Temp matches 3 if score #didnt_hazard Temp matches 1 as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=VarianceNode,tag=NeedReset,limit=1] at @s run function exigence:variance/node/reset
execute if score #blockade_level Temp matches 3 if score #didnt_reset Temp matches 1 if score #didnt_hazard Temp matches 1 as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=VarianceNode,tag=Setup,limit=1] at @s run function exigence:variance/node/setup

execute if score #blockade_level Temp matches 4 as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=HazardNode,tag=NeedReset,limit=1] at @s run function exigence:hazard/node/reset
execute if score #blockade_level Temp matches 4 if score #didnt_reset Temp matches 1 as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=HazardNode,tag=Setup,limit=1] at @s run function exigence:hazard/node/starting_hazard
execute if score #blockade_level Temp matches 4 if score #didnt_hazard Temp matches 1 as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=VarianceNode,tag=NeedReset,limit=1] at @s run function exigence:variance/node/reset
execute if score #blockade_level Temp matches 4 if score #didnt_reset Temp matches 1 if score #didnt_hazard Temp matches 1 as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,scores={node.property.object_level=4},tag=VarianceNode,tag=Setup,limit=1] at @s run function exigence:variance/node/setup

# If didn't setup OR reset, add to variance
scoreboard players operation #blockade_level Temp += #didnt_setup Temp

execute unless score #blockade_level Temp matches 5 run schedule function exigence:game/load/blockades/setup_loop 1t append
execute if score #blockade_level Temp matches 5 run function exigence:game/load/blockades/setup_finish
