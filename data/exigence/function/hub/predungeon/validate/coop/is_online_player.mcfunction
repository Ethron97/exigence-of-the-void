# Check if this node has a missing player

## CONSTRAINTS
#   AS profile node

#====================================================================================================

#say validate/coop/is_online_player

scoreboard players operation #compare career.player_id = @s profile.node.player_id

# 0 = player offline, 1 = online, 2 = predungeon
scoreboard players set #player_found Temp 0

# Check if player is in predungeon or just out and about
execute as @a if score @s career.player_id = #compare career.player_id run function exigence:hub/predungeon/validate/coop/is_present_player

# Message player who pressed the validate button
execute if score #player_found Temp matches 1 in exigence:profile_data positioned 8 3 8 as @e[type=armor_stand,tag=PlayerNode,distance=..20] \
if score @s profile.node.player_id = #compare career.player_id run tellraw @a[tag=Predungeon] \
[{text:"ALL co-op members must be present. ",color:red},{selector:"@s",color:gold}\
,{text:" is not in the ",color:red},{text:"Predungeon",color:dark_purple}]

execute if score #player_found Temp matches 0 in exigence:profile_data positioned 8 3 8 as @e[type=armor_stand,tag=PlayerNode,distance=..20] \
if score @s profile.node.player_id = #compare career.player_id run tellraw @a[tag=Predungeon] \
[{text:"ALL co-op members must be present. ",color:red},{selector:"@s",color:gold},{text:" is not online.",color:red}]
