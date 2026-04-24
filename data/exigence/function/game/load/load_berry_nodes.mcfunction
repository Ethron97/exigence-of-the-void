# Scheduled from start_loading_sequence
#   Decides which berry bushes are capable of growing bushes this run

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BerryNode] at @s run function exigence:botany/node/setup
