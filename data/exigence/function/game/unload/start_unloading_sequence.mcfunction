# So we can slowly unload things without causing a lag spike on exit

#====================================================================================================

say (D3) Start UNloading sequence

# TODO prevent players from trying to enter the dungeon while unloading, we don't know how long this will take

# We'll schedule later

# Unload exits
function exigence:game/unload/unload_exits

# Unload echos
function exigence:game/unload/unload_echos

# Reset berry nodes
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BerryNode] run function exigence:botany/node/berry_bush_inactive

# Kill all items
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:item] run kill @s

# Kill Ravager Glass stands (function both respawns and kills)
execute as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=RavagerGlass] run function exigence:game/other/ravager_glass/respawn_ravager_glass

# Unload variance/hazard tags
function exigence:game/unload/unload_variance_and_hazard
