$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Arrogance -",italic:false,bold:$(bold),color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"Gain +1 ",italic:false,color:"gray"},{text:"🔥",italic:false,color:"aqua"},{text:" for each time you",italic:false,color:"gray"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"stepped on sculk this run",italic:false,color:"gray"}]
