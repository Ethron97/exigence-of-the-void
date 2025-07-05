say [+1 minecart on level contains loot]

execute as @e[type=minecraft:armor_stand,tag=VarianceNode,tag=Minecart,tag=!CartCache,sort=random,limit=1] run function exigence:cards/cart_cache/cart_trigger
