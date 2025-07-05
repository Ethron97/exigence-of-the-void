$data merge entity @s {Item:{components:{"minecraft:custom_name":[$(name_cost),{text:"- Loot and Scoot -",italic:false,bold:$(bold),color:"$(uncommon)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["card_uncommon"]

$data modify entity @s Item.components."minecraft:lore" append value [$(uncommon_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
$data modify entity @s Item.components."minecraft:lore" append value [$(lore_cost),{text:": +7 ",bold:false,italic:false,color:"gray"},{text:"🍪",bold:false,italic:false,color:"gold"},{text:", +30 seconds of ",bold:false,italic:false,color:"gray"},{text:"Speed II",bold:false,italic:false,color:"$(effect)"}]
#$data modify entity @s Item.components."minecraft:lore" append value [{text:" of ",italic:false,color:"gray"}]
#data modify entity @s Item.components."minecraft:lore" append value [{text:"Line 3",italic:false,color:"gray"}]
