$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Void Clone ✦",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_legendary_instant"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Instant Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Spawn +1 ",italic:false,color:"gray"},{text:"Void Merchants ",italic:false,color:"$(void)"},{text:"on level 3",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"+1 ",italic:false,color:"gray"},{text:"☢",italic:false,color:"red"},{text:" on level 3",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(+1 ☢ per player in COOP)",italic:false,color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"",italic:false,color:"gray"}]
