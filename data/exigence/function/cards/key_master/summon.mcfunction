$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Key Master ✦",italic:false,bold:$(bold),color:"$(legendary)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(legendary_stars),{text:"Instant Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Drop +1 Mirror Mines key",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Drop +1 Temple of Fervor key",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Drop +1 Ardor's Bane key",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"+4 ",italic:false,color:"gray"},{text:"☢",italic:false,color:"red"},{text:" on random levels",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"(+4 ☢ per player in COOP)",italic:false,color:"dark_gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
