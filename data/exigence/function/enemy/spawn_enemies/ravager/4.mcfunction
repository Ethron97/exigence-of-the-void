# Spawn level 4 ravagers

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

execute if score game.profile_difficulty game.state matches 2.. \
run summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L4","DataMerge"],CustomName:{text:"Thud",color:"dark_red",italic:false},PersistenceRequired:1b}
summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L4","DataMerge"],CustomName:{text:"Pounce",color:"dark_red",italic:false},PersistenceRequired:1b}
summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L4","DataMerge"],CustomName:{text:"Swoop",color:"dark_red",italic:false},PersistenceRequired:1b}
summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L4","DataMerge"],CustomName:{text:"Zoom",color:"dark_red",italic:false},PersistenceRequired:1b}
summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L4","DataMerge"],CustomName:{text:"Fleet",color:"dark_red",italic:false},PersistenceRequired:1b}
#summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L4","DataMerge"],CustomName:{text:"Whiz",color:"dark_red",italic:false},PersistenceRequired:1b}