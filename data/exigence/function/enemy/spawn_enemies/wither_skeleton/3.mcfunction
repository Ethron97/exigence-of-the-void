# Spawn level 3wither skeletons


#   LEVEL 3
#       Decay - Crypt
summon minecraft:wither_skeleton -362 137 0 {Tags:["L3","DataMerge"],CustomName:{text:"Decay",color:"dark_red",italic:false},PersistenceRequired:1b}
execute at @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=MenaceNode,tag=WitherSkeleton,sort=random,limit=1] run tp @e[type=minecraft:wither_skeleton,name=Decay] ~ ~ ~

#       Rot - Crypt
summon minecraft:wither_skeleton -362 137 0 {Tags:["L3","DataMerge"],CustomName:{text:"Rot",color:"dark_red",italic:false},PersistenceRequired:1b}
execute at @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:marker,scores={node.property.object_level=3},tag=MenaceNode,tag=WitherSkeleton,sort=random,limit=1] run tp @e[type=minecraft:wither_skeleton,name=Rot] ~ ~ ~

#       Spoil - Crypt (sleeping)
#summon minecraft:wither_skeleton -354.5 136.5 -4.5 {Tags:["L3","DataMerge"],CustomName:{text:"Spoil",color:"dark_red",italic:false},PersistenceRequired:1b}
# Doesn't tp, gets released by hazard