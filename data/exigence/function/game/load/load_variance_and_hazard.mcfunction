# Load echos

#====================================================================================================
execute if score game.cancel_load hub.room_misc matches 1 run return fail
#----------------------------------------------------------------------------------------------------

# Proc variance nodes
execute if score game.difficulty game.state matches 2.. in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=VarianceNode\
,tag=Minecart,tag=!CartCache] run function exigence:variance/node/proc_minecart

# Spawn cart cache map
execute if score game.difficulty game.state matches 2.. in minecraft:overworld run summon item -455.5 78.0 -170.5 {Item:{id:"minecraft:map"},Age:-32768}

# Setup variance/hazard controller
execute in minecraft:overworld run function exigence:game/load/blockades/setup_blockades