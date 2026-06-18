# Get full title string object for level 1

## OUTPUT
#   STORAGE exigence:objective level_1

#====================================================================================================

data modify storage exigence:objective level_1 set value [{text:"[",color:"#2070a5"}]

# FORGOTTEN CARDS (if at least one card was played)
execute if score forgotten.belongings game.dungeon matches 1.. as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:item,tag=ForgottenBelonging] run function exigence:bossbar/objective/level_1/forgotten

# ECHOS
#execute as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:marker,tag=EchoNode,tag=ChosenEchoNode,sort=nearest] at @s run function exigence:bossbar/objective/level_1/echos
execute as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:armor_stand,tag=EchoWaypoint] at @s run function exigence:bossbar/objective/level_1/echos

# LEVEL KEYS
#   If no one got the key yet, 1 key icon
execute if score game.difficulty game.state matches 2.. if score 1.got_key game.level_doors matches 0 run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/level_1_key",atlas:"items",color:"white"}]
#   If key is picked up and not used, 1 per key on the ground
execute if score game.difficulty game.state matches 2.. if score 1.got_key game.level_doors matches 1 if score 1.opened game.level_doors matches 0 as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:armor_stand,tag=LevelKeyWaypoint] \
run function exigence:bossbar/objective/level_1/level_key

# LEVEL DOOR
#   Once door is opened it goes away
execute if score game.difficulty game.state matches 2.. if score 1.opened game.level_doors matches 0 run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/door_lock_b",atlas:"items",color:"white"},{text:""}]

# BEACONS
#   If difficulty 5, lit vs unlit
execute if score game.difficulty game.state matches 5 if score beacon.1 game.story.beacons matches ..2 run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/beacon_unlit",atlas:"items",color:"white"},{text:""}]
execute if score game.difficulty game.state matches 5 if score beacon.1 game.story.beacons matches 3.. run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/beacon_lit",atlas:"items",color:"white"},{text:""}]
# EXIT PORTAL
#   Once all echo nodes found
execute if score game.difficulty game.state matches ..3 if score game.all_echos_found game.state matches 1 run data modify storage exigence:objective level_1 append value [{sprite:"exigence:item/exit_portal",atlas:"items",color:"white"},{text:""}]

data modify storage exigence:objective level_1 append value [{text:"]",color:"#2070a5"}]