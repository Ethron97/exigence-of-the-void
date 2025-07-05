# Called whenever a beacon gets lit to update the title and score

scoreboard players add BeaconsLit DungeonRun 1

# Display title
execute if score BeaconsLit DungeonRun matches 1 run title @a[tag=ActivePlayer] subtitle [{text:"[",color:"gray"}\
,{text:" 🔥",color:"aqua",bold:false}\
,{text:" x",color:"gray",bold:false}\
,{text:" x",color:"gray",bold:false}\
,{text:" x",color:"gray",bold:false}\
,{text:" ]",color:"gray"}]

execute if score BeaconsLit DungeonRun matches 2 run title @a[tag=ActivePlayer] subtitle [{text:"[",color:"gray"}\
,{text:" 🔥",color:"aqua",bold:false}\
,{text:" 🔥",color:"aqua",bold:false}\
,{text:" x",color:"gray",bold:false}\
,{text:" x",color:"gray",bold:false}\
,{text:" ]",color:"gray"}]

execute if score BeaconsLit DungeonRun matches 3 run title @a[tag=ActivePlayer] subtitle [{text:"[",color:"gray"}\
,{text:" 🔥",color:"aqua",bold:false}\
,{text:" 🔥",color:"aqua",bold:false}\
,{text:" 🔥",color:"aqua",bold:false}\
,{text:" x",color:"gray",bold:false}\
,{text:" ]",color:"gray"}]

execute if score BeaconsLit DungeonRun matches 4 run title @a[tag=ActivePlayer] subtitle [{text:"[",color:"gray"}\
,{text:" 🔥",color:"aqua",bold:false}\
,{text:" 🔥",color:"aqua",bold:false}\
,{text:" 🔥",color:"aqua",bold:false}\
,{text:" 🔥",color:"aqua",bold:false}\
,{text:" ]",color:"gray"}]

title @a[tag=ActivePlayer] title ""
