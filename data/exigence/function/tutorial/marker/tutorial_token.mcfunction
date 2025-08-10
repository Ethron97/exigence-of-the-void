# Drops a new chat bubble / tutorial drop item

## CONSTRAINTS
#   AS marker (TutorialMarker)

#=============================================================================================================

execute at @s run loot spawn ~ ~0.2 ~ loot exigence:tutorial_token
execute at @s as @e[distance=..2,type=item,nbt={Item:{id:"minecraft:flow_banner_pattern"}}] run data modify entity @s Glowing set value true
execute at @s as @e[distance=..2,type=item,nbt={Item:{id:"minecraft:flow_banner_pattern"}}] run team join Green @s

execute as @e[distance=..1000,type=marker,tag=TutorialMarker,tag=LastDropped] run tag @s remove LastDropped
tag @s add LastDropped
tag @s add Dropped
