# Get full title string object for level 2

## OUTPUT
#   STORAGE exigence:objective level_2

#====================================================================================================

data modify storage exigence:objective gap_1 set value [{text:" "}]
data modify storage exigence:objective level_2 set value [{text:"[",color:"#18aa24"}]

# If not reached this level, ?
execute if score 2.reached game.level_doors matches 0 run data modify storage exigence:objective level_2 append value [{text:"?",color:"dark_gray"}]

# FORGOTTEN CARDS (if at least one card was played)
#   Appears once player reaches level 2
execute if score 2.reached game.level_doors matches 1 if score forgotten.experiments game.dungeon matches 1.. as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:item,tag=ForgottenExperiment] run function exigence:bossbar/objective/level_2/forgotten

# CART CACHE
execute if score 2.reached game.level_doors matches 1 if score cart_cache.card game.dungeon matches 1.. as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=Waypoint,tag=Cart] run data modify storage exigence:objective level_2 append value [{sprite:"minecraft:item/chest_minecart",atlas:"items",color:"white"}]

# ECHOS
#execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:marker,tag=EchoNode,tag=ChosenEchoNode,sort=nearest] at @s run function exigence:bossbar/objective/level_2/echos
execute as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=EchoWaypoint] at @s run function exigence:bossbar/objective/level_2/echos

# LEVEL KEYS - starts once players reach level 2
#   If no one got the key yet, 1 key icon
execute if score game.difficulty game.state matches 3.. if score 2.reached game.level_doors matches 1 if score 2.got_key game.level_doors matches 0 run data modify storage exigence:objective level_2 append value [{sprite:"exigence:item/level_2_key",atlas:"items",color:"white"}]
#   If key is picked up and not used, 1 per key on the ground
execute if score game.difficulty game.state matches 3.. if score 2.reached game.level_doors matches 1 if score 2.got_key game.level_doors matches 1 if score 2.opened game.level_doors matches 0 as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:armor_stand,tag=LevelKeyWaypoint] \
run function exigence:bossbar/objective/level_2/level_key

# LEVEL DOOR
#   Once door is opened it goes away
execute if score game.difficulty game.state matches 3.. if score 2.reached game.level_doors matches 1 if score 2.opened game.level_doors matches 0 run data modify storage exigence:objective level_2 append value [{sprite:"exigence:item/door_lock_b",atlas:"items",color:"white"},{text:""}]

# BEACONS
#   If difficulty 5, lit vs unlit
execute if score game.difficulty game.state matches 5 if score beacon.2 game.story.beacons matches ..2 run data modify storage exigence:objective level_2 append value [{sprite:"exigence:item/beacon_unlit",atlas:"items",color:"white"},{text:""}]
execute if score game.difficulty game.state matches 5 if score beacon.2 game.story.beacons matches 3.. run data modify storage exigence:objective level_2 append value [{sprite:"exigence:item/beacon_lit",atlas:"items",color:"white"},{text:""}]
# EXIT PORTAL
#   Once all echo nodes found
execute if score game.difficulty game.state matches 4 if score game.all_echos_found game.state matches 1 run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/exit_portal",atlas:"items",color:"white"},{text:""}]
execute if score game.difficulty game.state matches 4 if score game.all_echos_found game.state matches 1 if score mod.backup_plan game.modifiers matches 1 run data modify storage exigence:objective level_2 append value [{sprite:"exigence:item/exit_portal",atlas:"items",color:"white"},{text:""}]


data modify storage exigence:objective level_2 append value [{text:"]",color:"#18aa24"}]