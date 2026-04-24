# Spawn level 2 ravagers

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

execute if score game.profile_difficulty game.state matches 2.. \
run summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L2","DataMerge"],CustomName:{text:"Bustle",color:"dark_red",italic:false},PersistenceRequired:1b}
summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L2","DataMerge"],CustomName:{text:"Scamper",color:"dark_red",italic:false},PersistenceRequired:1b}
summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L2","DataMerge"],CustomName:{text:"Hurl",color:"dark_red",italic:false},PersistenceRequired:1b}
summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L2","DataMerge"],CustomName:{text:"Pelt",color:"dark_red",italic:false},PersistenceRequired:1b}
summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L2","DataMerge"],CustomName:{text:"Lope",color:"dark_red",italic:false},PersistenceRequired:1b}
#summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L2","DataMerge"],CustomName:{text:"Spurt",color:"dark_red",italic:false},PersistenceRequired:1b}
