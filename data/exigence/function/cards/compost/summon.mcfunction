$data merge entity @s {Item:{components:{"minecraft:custom_name":[{text:"- Compost -",italic:false,bold:$(bold),color:"$(rare)"}]},count:1,id:"minecraft:paper"}}

$data modify entity @s Item.components."minecraft:custom_data".card_name set value '$(card_name)'
$data modify entity @s Item.components."minecraft:custom_model_data".strings set value ["$(card_name)"]

$data modify entity @s Item.components."minecraft:lore" append value [$(rare_stars),{text:"Standard Card",italic:false,color:"white"}]
data modify entity @s Item.components."minecraft:lore" append value [{text:""}]
data modify entity @s Item.components."minecraft:lore" append value [{text:"+2 ",italic:false,color:"gray"},{text:"🍒 ",italic:false,color:"dark_green"},{text:"for each ",italic:false,color:"gray"},{text:"♻ ",italic:false,color:"green"},{text:"this run",italic:false,color:"gray"}]
