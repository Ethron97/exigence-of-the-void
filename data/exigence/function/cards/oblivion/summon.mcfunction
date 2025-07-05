$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Oblivion ✦",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_legendary_instant"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Instant Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"✘ Void ",italic:false,color:"dark_purple"},{text:"cards are not consumed this run.",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"For each ",italic:false,color:"gray"},{text:"Void ",italic:false,color:"dark_purple"},{text:"card, the minimum amount",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"of ",italic:false,color:"gray"},{text:"Menace ",italic:false,color:"dark_purple"},{text:"is increased by 2.",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(Menace cannot be reduced below minumum)",italic:false,color:"dark_gray"}]

# OLD
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Other ",italic:false,color:"gray"}\
#,{text:"✘ Void ",italic:false,color:"dark_purple"},{text:"cards are not consumed",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"after this run. One random non ",italic:false,color:"gray"}\
#,{text:"✘ Void ",italic:false,color:"dark_purple"},{text:"card",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"consumed after this run.",italic:false,color:"gray"}]

#data modify entity @s Item.components."minecraft:lore" append value [{text:"Use the Ancient Flames to light beacons.",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"",italic:false,color:"gray"}]
