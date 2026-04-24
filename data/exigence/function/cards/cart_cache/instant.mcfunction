say [+1 minecart on level contains loot]

execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=VarianceNode\
,tag=Minecart,tag=!CartCache,sort=random,limit=1] run function exigence:cards/cart_cache/cart_trigger
