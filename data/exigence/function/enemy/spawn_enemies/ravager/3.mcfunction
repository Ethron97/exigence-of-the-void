# Spawn level 3 ravagers

## CONSTRAINTS
#   IN minecraft:overworld

#====================================================================================================

execute if score game.profile_difficulty game.state matches 2.. \
run summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L3","DataMerge"],CustomName:{text:"Blitz",color:"dark_red",italic:false},PersistenceRequired:1b}
summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L3","DataMerge"],CustomName:{text:"Storm",color:"dark_red",italic:false},PersistenceRequired:1b}
summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L3","DataMerge"],CustomName:{text:"Rocket",color:"dark_red",italic:false},PersistenceRequired:1b}
summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L3","DataMerge"],CustomName:{text:"Careen",color:"dark_red",italic:false},PersistenceRequired:1b}
summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L3","DataMerge"],CustomName:{text:"Bolt",color:"dark_red",italic:false},PersistenceRequired:1b}
#summon minecraft:ravager -279.0 -63.0 -135.0 {Tags:["L3","DataMerge"],CustomName:{text:"Pelt",color:"dark_red",italic:false},PersistenceRequired:1b}