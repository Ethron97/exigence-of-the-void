$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Key Hunter I ✦",italic:false,bold:$(bold),color:"$(common)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_common_instant"]

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Instant Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Drop +1 Mirror Mines key",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"+1 ",italic:false,color:"gray"},{text:"☢",italic:false,color:"red"},{text:" on level 1",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(+1 ☢ per player in COOP)",italic:false,color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
