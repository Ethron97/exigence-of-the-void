$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✘ ✦ Patience ✦ ✘",italic:false,bold:$(bold),color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_rare_void"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Instant Void Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Whenever ",bold:false,italic:false,color:"gray"}\
,{text:"Fatigue ",bold:false,italic:false,color:"white"},{text:"plays, +5 ",bold:false,italic:false,color:"gray"},{text:"🍪",bold:false,italic:false,color:"gold"}]
