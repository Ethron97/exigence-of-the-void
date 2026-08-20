# Scheduled from start_loading_sequence
# Load bells

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Setup bells (80% active)
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BellNode] at @s run function exigence:bell/node/setup

# Disable 2 bells on each level at random
#execute in minecraft:overworld as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,tag=BellNode,sort=random,limit=2] at @s run function exigence:bell/node/deactivate
#execute in minecraft:overworld as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,tag=BellNode,sort=random,limit=2] at @s run function exigence:bell/node/deactivate
#execute in minecraft:overworld as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,tag=BellNode,sort=random,limit=2] at @s run function exigence:bell/node/deactivate
#execute in minecraft:overworld as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,tag=BellNode,sort=random,limit=2] at @s run function exigence:bell/node/deactivate
