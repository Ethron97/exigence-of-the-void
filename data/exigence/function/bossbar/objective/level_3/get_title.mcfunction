# Get full title string object for level 3

## OUTPUT
#   STORAGE exigence:objective level_3

#====================================================================================================

data modify storage exigence:objective gap_2 set value [{text:" "}]
data modify storage exigence:objective level_3 set value [{text:"[",color:"#1824cc"}]

# If not reached this level, ?
execute if score 3.reached game.level_doors matches 0 run data modify storage exigence:objective level_3 append value [{text:"?",color:"dark_gray"}]

# FORGOTTEN CARDS (if at least one card was played)
#   Appears once player reaches level 3
execute if score 3.reached game.level_doors matches 1 if score forgotten.offerings game.dungeon matches 1.. as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:item,tag=ForgottenOffering] run function exigence:bossbar/objective/level_3/forgotten

# ECHOS
#execute as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,tag=EchoNode,tag=ChosenEchoNode,sort=nearest] at @s run function exigence:bossbar/objective/level_2/echos
execute as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:armor_stand,tag=EchoWaypoint] at @s run function exigence:bossbar/objective/level_3/echos

# LEVEL KEYS - starts once players reach level 3
#   If no one got the key yet, 1 key icon
execute if score game.difficulty game.state matches 4.. if score 3.reached game.level_doors matches 1 if score 3.got_key game.level_doors matches 0 run data modify storage exigence:objective level_3 append value [{sprite:"exigence:item/level_3_key",atlas:"items",color:"white"}]
#   If key is picked up and not used, 1 per key on the ground
execute if score game.difficulty game.state matches 4.. if score 3.reached game.level_doors matches 1 if score 3.got_key game.level_doors matches 1 if score 3.opened game.level_doors matches 0 as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:armor_stand,tag=LevelKeyWaypoint] \
run function exigence:bossbar/objective/level_3/level_key

# LEVEL DOOR
#   Once door is opened it goes away
execute if score game.difficulty game.state matches 4.. if score 3.reached game.level_doors matches 1 if score 3.opened game.level_doors matches 0 run data modify storage exigence:objective level_3 append value [{sprite:"exigence:item/door_lock_b",atlas:"items",color:"white"},{text:""}]

# BEACONS
#   If difficulty 5, lit vs unlit
execute if score game.difficulty game.state matches 5 if score beacon.3 game.story.beacons matches ..2 run data modify storage exigence:objective level_3 append value [{sprite:"exigence:item/beacon_unlit",atlas:"items",color:"white"},{text:""}]
execute if score game.difficulty game.state matches 5 if score beacon.3 game.story.beacons matches 3.. run data modify storage exigence:objective level_3 append value [{sprite:"exigence:item/beacon_lit",atlas:"items",color:"white"},{text:""}]


data modify storage exigence:objective level_3 append value [{text:"]",color:"#1824cc"}]