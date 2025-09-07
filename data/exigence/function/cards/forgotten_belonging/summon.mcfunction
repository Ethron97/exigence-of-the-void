$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"✦ Forgotten Belonging ✦",italic:false,bold:$(bold),color:"$(common)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(common_stars),{text:"Instant Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [{text:"Drop one ",italic:false,color:"gray"},{text:"Common Void",italic:false,color:"$(common)"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"card in the tavern",italic:false,color:"gray"}]
