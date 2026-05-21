# If player left a profile, inform other player

## CONSTRAINTS
#   AS player

## INPUT
#   STR(item id) profile_identifier
#   SCORE #player_left_id profile.node.player_id

## OUTPUT
#   SCORE #player_found2 Temp

#====================================================================================================

execute if score toggle.profile debug matches 1 if score debug.level debug matches 3.. run say (D3) Inform member

tag @s add Private_InformingPlayer

$execute in exigence:profile_data as @e[x=0,y=0,z=32,dx=15,dy=15,dz=15,tag=PlayerNode] if score @s profile.node.player_id = #player_left_id profile.node.player_id \
run tellraw @a[tag=Private_InformingPlayer,limit=1] [{text:"[CO-OP PROFILE] ",color:red,bold:true},{selector:"@s",bold:false,color:gold},{text:" has left co-op profile <",color:gray,italic:true,bold:false}\
,{sprite:"minecraft:item/$(profile_identifier)",atlas:"items",color:"white",bold:false},{text:">",color:gray,bold:false}]

tag @s remove Private_InformingPlayer

scoreboard players set #player_found2 Temp 1
