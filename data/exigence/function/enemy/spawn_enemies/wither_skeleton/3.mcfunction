# Spawn level 3wither skeletons


#   LEVEL 3
#       Decay - Crypt
summon minecraft:wither_skeleton -362 137 0 {Tags:["L3","DataMerge"],CustomName:{text:"Decay",color:"dark_red",italic:false},PersistenceRequired:1b}
execute at @e[type=minecraft:armor_stand,tag=MenaceNode,tag=WitherSkeleton,scores={ObjectLevel=3},sort=random,limit=1] run tp @e[type=minecraft:wither_skeleton,name=Decay] ~ ~ ~

#       Rot - Crypt
summon minecraft:wither_skeleton -362 137 0 {Tags:["L3","DataMerge"],CustomName:{text:"Rot",color:"dark_red",italic:false},PersistenceRequired:1b}
execute at @e[type=minecraft:armor_stand,tag=MenaceNode,tag=WitherSkeleton,scores={ObjectLevel=3},sort=random,limit=1] run tp @e[type=minecraft:wither_skeleton,name=Rot] ~ ~ ~

#       Spoil - Crypt (sleeping)
#summon minecraft:wither_skeleton -354.5 136.5 -4.5 {Tags:["L3","DataMerge"],CustomName:{text:"Spoil",color:"dark_red",italic:false},PersistenceRequired:1b}
# Doesn't tp, gets released by hazard