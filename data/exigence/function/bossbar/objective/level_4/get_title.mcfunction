# Get full title string object for level 4

## OUTPUT
#   STORAGE exigence:objective level_4

#====================================================================================================

data modify storage exigence:objective gap_3 set value [{text:" "}]
data modify storage exigence:objective level_4 set value [{text:"[",color:"#821aac"}]
#tellraw @s [{color:"#821aac"}]

# If not reached this level, ?
execute if score 4.reached game.level_doors matches 0 run data modify storage exigence:objective level_4 append value [{text:"?",color:"dark_gray"}]

# VOID CACHE
execute if score 4.reached game.level_doors matches 1 if score mod.void_cache game.modifiers matches 1.. as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:armor_stand,tag=Waypoint,tag=VoidCache] run data modify storage exigence:objective level_4 append value [{sprite:"minecraft:item/endermite_spawn_egg",atlas:"items",color:"white"}]

# ECHOS
#execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:marker,tag=EchoNode,tag=ChosenEchoNode,sort=nearest] at @s run function exigence:bossbar/objective/level_2/echos
execute as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:armor_stand,tag=EchoWaypoint] at @s run function exigence:bossbar/objective/level_4/echos

# BEACONS
#   If difficulty 5, lit vs unlit
execute if score game.difficulty game.state matches 5 if score beacon.4 game.story.beacons matches ..2 run data modify storage exigence:objective level_4 append value [{sprite:"exigence:item/beacon_unlit",atlas:"items",color:"white"},{text:""}]
execute if score game.difficulty game.state matches 5 if score beacon.4 game.story.beacons matches 3.. run data modify storage exigence:objective level_4 append value [{sprite:"exigence:item/beacon_lit",atlas:"items",color:"white"},{text:""}]


data modify storage exigence:objective level_4 append value [{text:"]",color:"#821aac"}]