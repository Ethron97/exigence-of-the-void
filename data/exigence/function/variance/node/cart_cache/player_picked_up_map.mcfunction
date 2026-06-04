# Called when a player picks up the cart cache map

## CONSTRAINTS
#   AS player

#====================================================================================================

tellraw @s [{sprite:"minecraft:item/filled_map",atlas:"items",color:"white"},{text:" You found a map of all known ",color:"gray"}\
,{text:"Cart Caches",color:"gold"},{text:"!",color:"gray"}]

# Sound effect
execute at @s run playsound minecraft:entity.villager.work_cartographer player @a[tag=ActivePlayer] ~ ~1000 ~ 1000 1

# TODO flashing waypoint style when it appears? Like the bossbar in tutorial

# Feedback
#   If at least one cart cache exists
scoreboard players set #temp Temp 0
scoreboard players operation #temp Temp += cart_cache.card game.dungeon
scoreboard players operation #temp Temp += cart_cache.proc game.dungeon
execute if score #temp Temp matches 1.. run tellraw @s [{text:" + ",color:"green"},{text:"Icons have been added to your locator bar",color:"gray"}]
execute if score #temp Temp matches 0 run tellraw @s [{text:" - ",color:"red"},{text:"Looks like they've all been plundered",color:"gray"}]

tag @s add FoundMap
title @a[tag=ActivePlayer,tag=!FoundMap] subtitle [{selector:"@s",color:"dark_aqua"},{text:"found a ",color:"gray"},{text:"Cart Cache ",color:"gold"},{text:"map",color:"gray"}]
title @a[tag=ActivePlayer,tag=!FoundMap] title ""
tag @s remove FoundMap

# Enable waypoints
execute in minecraft:overworld as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=Waypoint,tag=Cart] run function exigence:variance/node/cart_cache/activate_cart_waypoint
