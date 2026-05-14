# Skips to next section
#   Called by access/use_item_hand

## CONSTRAINTS
#   AS player
#   IN exigence:tutorial

#====================================================================================================

execute if score toggle.tutorial debug matches 1 if score debug.level debug matches 3.. run say (D3) Skip section

# Save current last dropped
tag @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=LastDropped] add SaveLastDropped

# Reset tutorial
function exigence:tutorial/reset

clear @a[tag=Tutorial,distance=..1000] compass
clear @a[tag=Tutorial,distance=..1000] echo_shard
clear @a[tag=Tutorial,distance=..1000] blaze_powder

# Restore saved last dropped
scoreboard players operation #compare tutorial.marker.id = @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=SaveLastDropped,limit=1] tutorial.marker.id
tag @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=SaveLastDropped] add LastDropped
tag @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=SaveLastDropped] remove SaveLastDropped
execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker] if score @s tutorial.marker.id < #compare tutorial.marker.id run tag @s add Dropped

execute as @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=LastDropped] run function exigence:tutorial/flow/private/i_next_section

tp @s @e[x=12,y=97,z=-80,dx=230,dy=100,dz=250,type=minecraft:marker,tag=TutorialMarker,tag=Fallback,limit=1]

function exigence:tutorial/flow/reset_bossbars

execute if score tut.step hub.tutorial matches 1500 run fill 175 131 49 177 134 47 structure_void replace ice

# Playsound
execute at @s run playsound minecraft:entity.enderman.teleport ui @s ~ ~100 ~ 100 1

# Message player
tellraw @s [{text:"-> Skipped section",color:yellow}]
