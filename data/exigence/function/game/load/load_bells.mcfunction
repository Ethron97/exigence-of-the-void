# Load echos

#====================================================================================================
execute if score predungeon.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Select Echo shard drop location and Ancient Ember amount
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:armor_stand,tag=BellNode] at @s run function exigence:bell/node/setup