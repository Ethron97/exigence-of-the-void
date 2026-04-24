# Drops a new chat bubble / tutorial drop item

## CONSTRAINTS
#   AS marker (TutorialMarker)

#====================================================================================================

execute at @s run loot spawn ~ ~0.2 ~ loot exigence:tutorial_token
#execute at @s as @e[distance=..2,type=minecraft:item,nbt={Item:{id:"minecraft:flow_banner_pattern"}}] run data modify entity @s Glowing set value true
execute at @s as @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:flow_banner_pattern"}}] run team join Green @s
execute at @s as @e[type=minecraft:item,distance=..2,nbt={Item:{id:"minecraft:flow_banner_pattern"}}] run data merge entity @s {Age:-32768,Glowing:true}

execute as @e[type=minecraft:marker,tag=TutorialMarker,tag=LastDropped,distance=..1000] run tag @s remove LastDropped
tag @s add LastDropped
tag @s add Dropped
