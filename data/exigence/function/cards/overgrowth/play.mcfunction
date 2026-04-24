say [2 Aqua: ALL grown bushes have a 25% chance to gain +1/2 berries]

function exigence:resources/try_consume with storage exigence:resources

execute if score #LastConsumeResult game.resources matches 1 as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=BerryNode,tag=Grown] run function exigence:cards/overgrowth/private/trigger
