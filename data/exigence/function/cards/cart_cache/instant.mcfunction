#say [+1 copper minecart on level contains loot]
function exigence:cards/announce_card

scoreboard players add cart_cache.card game.dungeon 1

# Adds cartcache tag to chosen variance node, which then marks it setup as cart cache on variance setup
execute in minecraft:overworld as @e[x=-520,y=-64,z=-287,dx=345,dy=345,dz=345,type=minecraft:marker,tag=VarianceNode\
,tag=Minecart,tag=!CartCache,sort=random,limit=1] run function exigence:cards/cart_cache/private/add_from_card